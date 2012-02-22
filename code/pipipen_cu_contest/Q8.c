#include <string.h>
#include "contest.h"

int main()
{
    int retval = 0;
    char *env = NULL;
    char *individual = NULL;

    env = getenv(ENV_VAR);
    individual = strtok(env, DELIMINATER);

    while(individual != NULL)
    {
        printf("%s\n", individual);
        individual = strtok(NULL, DELIMINATER);
    }

    return retval;
}
