LNX=$1
cd /
find  $LNX                                                                \
        -name "*.[chxsS]" -print > ${LNX}/cscope.files

cd ${LNX}
cscope -b -q -k
