#!/bin/sh
rm -rf result
mkdir -p result
echo "-----------------"
echo -n "Testing Q1: "
./Q1 4 > result/out.txt
diff -q test_1/out.txt result/out.txt > /dev/null
if [ $? = 0 ]; then
    echo "passed!"
else
    echo "failed!"
fi
echo "-----------------"

rm -rf result

