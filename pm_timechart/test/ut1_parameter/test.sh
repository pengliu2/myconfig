#!/bin/sh
echo "only one log file(must be kernel log) shall be OK"
read l
python ../../src/timechart.py dmesg.txt
