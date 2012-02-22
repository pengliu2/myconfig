#!/bin/sh
rm -rf result
mkdir -p result
echo "-----------------"
echo -n "Testing Q2: "
./Q2 test_2/in.txt > result/out.txt
diff -q test_2/out.txt result/out.txt > /dev/null
if [ $? = 0 ]; then
    echo "passed!"
else
    echo "failed!"
fi
echo "-----------------"

rm -rf result

