#!/bin/sh
rm -rf result
mkdir -p result
echo "-----------------"
echo -n "Testing Q8: "
PATH="/usr/bin:/usr/local/bin:~/bin" ./Q8 > result/out.txt
diff -q test_8/out.txt result/out.txt > /dev/null
if [ $? = 0 ]; then
    echo "passed!"
else
    echo "failed!"
fi
echo "-----------------"

rm -rf result

