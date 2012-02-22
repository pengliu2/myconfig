CFLAGS = -Wall

ifeq ($(DEBUG),true)
CFLAGS += -g
else
CFLAGS += -O2
endif

ifeq ($(ENABLE_DEBUGOUTPUT),true)
CFLAGS += -DENABLE_DEBUGOUTPUT
endif

CONTEST_TARGET = Q1 Q2 Q8
AUTOTEST_TARGET = test_Q1 test_Q2 test_Q8

all: $(CONTEST_TARGET) $(AUTOTEST_TARGET)
test: $(AUTOTEST_TARGET)

Q1: Q1.o

Q2: Q2.o

Q8: Q8.o


test_Q1:
		@sh ./test_1/test.sh

test_Q2:
		@sh ./test_2/test.sh

test_Q8:
		@sh ./test_8/test.sh

.o:.c

clean:
	rm -f *.o *.exe

.phony: all clean test test_Q2 test_Q1 test_Q8
