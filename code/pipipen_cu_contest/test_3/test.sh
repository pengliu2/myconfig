#!/bin/sh
rm -rf result
mkdir -p result
echo "-----------------"
echo -n "Testing Q3: "
./Q2 test_3/in.txt > result/out.txt
diff -q test_3/out.txt result/out.txt > /dev/null
if [ $? = 0 ]; then
    echo "passed!"
else
    echo "failed!"
fi
echo "-----------------"

rm -rf result

