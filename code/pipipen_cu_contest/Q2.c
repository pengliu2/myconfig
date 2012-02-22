#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "contest.h"

typedef struct {
    int left;
    int right;
} area_t;

int fill_range(unsigned char *bitmap, int bitmap_size, area_t *range)
{
    int left_char, left_bit, right_char, right_bit;
    unsigned char mask;

    if (range->left >= UPPER)
    {
        fprintf(stderr,"left bound too large (should be less than 1000001)\n");
        return -1;
    }

    left_char = range->left / 8;
    left_bit = range->left % 8 ;
    right_char = range->right < UPPER ? range->right / 8 : (UPPER - 1) / 8;
    right_bit = range->right < UPPER ? range->right % 8 : (UPPER - 1) % 8;

    switch (right_char - left_char)
    {
    case 0:
        mask = (0xFF << left_bit) & (0xFF >> (8 - right_bit -1));
        bitmap[left_char] = bitmap[left_char] | mask;
        break;
    case 1:
        mask = 0xFF << left_bit;
        bitmap[left_char] = bitmap[left_char] | mask;
        mask = 0xFF >> (8 - right_bit -1);
        bitmap[right_char] = bitmap[right_char] | mask;
        break;
    default:
        mask = 0xFF << left_bit;
        bitmap[left_char] = bitmap[left_char] | mask;
        mask = 0xFF >> (8 - right_bit - 1);
        bitmap[right_char] = bitmap[right_char] | mask;
        memset(bitmap + left_char + 1, 0xFF, right_char - left_char - 1);
        break;

    }


    return 0;
}

int find_clear(unsigned char *bitmap, int bitmap_size, int begin_from)
{
    int retval = -1;
    int start_char = begin_from / 8;
    int start_bit = begin_from % 8;
    unsigned char bit_mask;
    unsigned char tmp;
    int i;

/* to check if the next zero in the character we start from */
    bit_mask = (BIT_ONE >> start_bit) << start_bit;

    tmp = bitmap[start_char] | (~bit_mask);
    if (tmp != BIT_ONE)
    {
        retval = 8 * start_char;
    }
    else
    { /* no more one in this character */
        for (i = start_char + 1; i < bitmap_size; i++)
        {
            if (bitmap[i] != BIT_ONE)
            {
                retval = 8 * i;
                tmp = bitmap[i];
                break;
            }
        }
    }
    
/* no more one in the bitmap */
    if (retval == -1)
        return retval;

/* calculate the exact bit location in the bitmap character */
    i = 0;
    while ((tmp & (BIT_ONE & BIT_MASK)) == 1)
    {
        tmp >>= 1;
        i++;
    }

    return retval + i;

}

int find_set(unsigned char *bitmap, int bitmap_size, int begin_from)
{
    int retval = -1;
    int start_char = begin_from / 8;
    int start_bit = begin_from % 8;
    unsigned char bit_mask;
    unsigned char tmp;
    int i;

/* to check if the next one in the character we start from */
    bit_mask = (BIT_ONE >> start_bit) << start_bit;
    tmp = bitmap[start_char] & bit_mask;
    if (tmp != BIT_ZERO)
    {
        retval = 8 * start_char;
    }
    else
    { /* no more one in this character */
        for (i = start_char + 1; i < bitmap_size; i++)
        {
            if (bitmap[i] != BIT_ZERO)
            {
                retval = 8 * i;
                tmp = bitmap[i];
                break;
            }
        }
    }
    
/* no more one in the bitmap */
    if (retval == -1)
        return retval;

/* calculate the exact bit location in the bitmap character */
    i = 0;
    while ((tmp & (BIT_ONE & BIT_MASK)) == 0)
    {
        tmp >>= 1;
        i++;
    }

    return retval + i;
}

int find_next_range(unsigned char *bitmap, int bitmap_size, area_t *range, int begin_from)
{
    if ((range->left = find_set(bitmap, bitmap_size, begin_from)) < 0)
    {
        DEBUG_OUTPUT("debug: no range from %d\n", begin_from);
        return range->left;
    }

    range->right = find_clear(bitmap, bitmap_size, range->left) - 1;
    DEBUG_OUTPUT("debug: [\t%d \t%d]\n", range->left, range->right);
    return range->right;
}

int main(int argc, char *argv[])
{
    int retval = 0;
    area_t sets;
    int bitmap_size = UPPER / 8 + 1;
    unsigned char *bitmap = NULL;
    int i;
    area_t result;
    FILE *file;
    char buffer[MAX_LINE_LEN];
    int set_number;

#ifdef ENABLE_DEBUGOUTPUT
    int d_i;
#endif

    if (argc < 2)
    {
        fprintf(stderr,"usage:\n");
    }

    file = fopen(argv[1], "r");
    if (file == NULL)
    {
        perror(__FUNCTION__);
        goto fail;
    }

/* read the first line */
    if (fgets(buffer, MAX_LINE_LEN, file) == NULL)
    {
        perror(__FUNCTION__);
        goto fail;
    }
    set_number = atoi(buffer);
    if (set_number <= 0)
    {
        fprintf(stderr,"No valid data in file %s!\n", argv[1]);
        goto fail;
    }

    bitmap = (unsigned char*)malloc(bitmap_size);
    if (bitmap == NULL)
        goto fail;
    memset(bitmap, 0, bitmap_size);

/* read in all data */
    for (i = 0; i < set_number; i++)
    {
        sets.left = LARGE_NUMBER;
        sets.right = -1;

        if (fgets(buffer, MAX_LINE_LEN, file) == NULL)
        {
            perror(__FUNCTION__);
            if (feof(file))
            {
                fprintf(stderr,"warning: the actual lines are less than %d!\n", set_number);
                break;
            }

            if (ferror(file))
            {
                fprintf(stderr,"error: read file %s error! quit\n", argv[1]);
                goto fail;
            }
            continue;
        }
        sscanf(buffer, "%d %d", &(sets.left), &(sets.right));
        DEBUG_OUTPUT("read set:[%d %d]\n", sets.left, sets.right);

        if(sets.left > sets.right)
        {
            fprintf(stderr,"warning: left value is larger than right value! ignore it in the set %d.\n", i);
            continue;
        }

        if (fill_range(bitmap, bitmap_size, &sets) < 0)
        {
            fprintf(stderr,"warning: there's problem in the %dth input\n", i+1);
        }
    }

#ifdef ENABLE_DEBUGOUTPUT
    fprintf(stderr,"0-9:\n");
    for (d_i = 0; d_i < 10; d_i++)
    {
        fprintf(stderr,"[\t%d]:\t\t%02X\n", d_i, bitmap[d_i]);
    }

    fprintf(stderr,"\nlast 9:\n");
    for (d_i = bitmap_size - 10; d_i < bitmap_size; d_i++)
    {
        fprintf(stderr,"[\t%d]:\t\t%02X\n", d_i, bitmap[d_i]);
    }
    fprintf(stderr,"\nEOF\n");
#endif
    retval = -1;
    do
    {
        retval = find_next_range(bitmap, bitmap_size, &result, retval + 1);
        if (retval >= 0)
            fprintf(stdout, "\t%d\t%d\n", result.left, result.right);
    } while (retval >= 0);

fail:
    if (bitmap)
        free(bitmap);
    if (file)
        fclose(file);
    return retval;
}
