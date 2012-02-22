#ifndef CONTEST_H
#define CONTEST_H

#include <stdio.h>

#define OUTFILE		"out.txt"
#define INFILE		"in.txt"

/* for the first question */
#define CONTEST_STARTER 1

#ifdef ENABLE_DEBUGOUTPUT
#define DEBUG_OUTPUT(fmt, args...)	fprintf(stderr, fmt, ##args)
#else
#define DEBUG_OUTPUT(fmt, args...) do{}while(0)
#endif

/* for the second question */
#define MAX_N		50000
#define MIN_N		3

#define LARGE_NUMBER	99999999
#define UPPER		1000001
#define MAX_LINE_LEN	17
#define BIT_ONE		0xFF
#define BIT_ZERO	0x00
#define BIT_MASK	0x01

/* for the eighth question */
#define ENV_VAR         "PATH"
#define DELIMINATER     ":;"

#endif /* CONTEST_H */
