#include <stdio.h>
#include <errno.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdlib.h>
#include <string.h>
#include "contest.h"

 * 
 * Special consideration: 
 * 1. We don't want to use too much memory if the input is large. 
 * 2. Supposing the file size limit is 2GB in old linux kernel. 
 *    How many numbers in string can 2GB file stored?
 *    We've got 9 one byte numbers, 90 two byte numbers, 900 three
 *    byte numbers and so on. Don't forget the separators \t and , or \n. 
 *    So we get 9 * (3*10^0 + 4*10^1 + 5*10^2 + ...) bytes
 *    In short, I don't think our input shall exceed
 */
#define INPUT_LIMIT 176220

#define min(x, y)	(x < y ? x : y)
#define max(x, y)	(x > y ? x : y)

int fill_line(FILE *file, int *values, size_t n)
{
    int retval;

    if ((retval = fprintf(file, "\t%d", *values)) < 0)
    {
	perror(__FUNCTION__);
	return retval;
    }
    while(--n)
    {
	if ((retval = fprintf(file, ",")) < 0)
	{
	    perror(__FUNCTION__);
	    return retval;
	}
	if ((retval = fprintf(file, "\t%d", *(++values))) < 0)
	{
	    perror(__FUNCTION__);
	    return retval;
	}
    }
    if ((retval = fprintf(file, "\n")) < 0)
    {
	perror(__FUNCTION__);
	return retval;
    }
    return 0;
}

int main(int argc, char *argv[]){
    int retval = 0;

    int borderlen;
    int cur_border;
    int starter;
    int *starters;
    int *buffer = NULL;
    int *curcell;
    int half_border;
    int i;
    int line;
    int col;
    int odd;
    int starter_line;

    if (argc < 2)
    {
	printf("usage:\n");
	exit(EINVAL);
    }

    borderlen = atoi(argv[1]);

    if (borderlen >= INPUT_LIMIT || borderlen <= 0)
    {
	printf("argument is too large ( larger than %d )!\n", INPUT_LIMIT);
	exit(EINVAL);
    }
    half_border = (borderlen - 1) / 2;
    odd = borderlen % 2;

/* allocate a buffer */
    buffer = (int *)malloc(borderlen * sizeof(int));
    if ( buffer < 0)
    {
	retval = errno;
	goto fail1;
    }

/* Now we calculate each starter of small square */
    starter  = CONTEST_STARTER;
    cur_border = borderlen;
    starters = (int *)malloc(half_border * sizeof(int));
    for (i = half_border; i >= 0; i--)
    {
	starters[i] = starter;
	starter += (cur_border - 1) * 4;
	cur_border -= 2;
    }

/* calculate each line */
    for (line = 0; line < borderlen; line++)
    {
	int lower_line = 0;
	int line2mid;

	memset(buffer, 0, borderlen * sizeof(int));
	curcell = buffer;

	if (line > half_border)
	{
	    line2mid = line - half_border - 1 + odd;
	    lower_line = 1;
	}
	else
	{
	    line2mid = half_border - line;
	}

	for (col = 0; col < borderlen; col++)
	{
	    int righ_col = 0;
	    int col2mid;
	    int starter_index;
	    if (col > half_border)
	    {
		col2mid = col - half_border - 1 + odd;
		righ_col = 1;
	    }
	    else
	    {
		col2mid = half_border - col;
	    }

	    starter_index = max(line2mid, col2mid);

	    starter = starters[starter_index];
	    starter_line = half_border - starter_index;
	    DEBUG_OUTPUT("\t%d", starter);

	    cur_border = (starter_index + 1) * 2 - borderlen % 2;

	    *curcell = starter;

	    if ((line2mid == starter_index) && (lower_line == 0))
	    {/* the cell is in the upper border */
		*curcell = *curcell + col - starter_line;
		DEBUG_OUTPUT("[%d]", *curcell);
		goto found;
	    }
	    *curcell = *curcell + cur_border - 1;
	    
	    if ((col2mid == starter_index) && righ_col)
	    { /* the cell is in the right border */
		*curcell = *curcell + line - starter_line;
		DEBUG_OUTPUT("[%d]", *curcell);
		goto found;
	    }
	    *curcell = *curcell + cur_border - 1;
	    
	    if (line2mid == starter_index)
	    { /* the cell is in the lower border */
		*curcell = *curcell + starter_line + cur_border - col - 1;
		DEBUG_OUTPUT("[%d]", *curcell);
		goto found;
	    }
	    *curcell = *curcell + cur_border - 1;

	    *curcell = *curcell + starter_line + cur_border - line -1;
	    DEBUG_OUTPUT("[%d]", *curcell);
	    
	found:
	    curcell = curcell + 1;
	}
	DEBUG_OUTPUT("\n");

	if ((retval = fill_line(stdout, buffer, borderlen)) < 0)
	    goto fail1;

	cur_border -= 2;
    }
fail1:
    if (buffer)
	free((void *)buffer);
    return retval;
}
