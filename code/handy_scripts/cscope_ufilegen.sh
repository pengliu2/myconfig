LNX=$1
cd /
find $LNX                                                                \
    -name "*.[chxsS]" -print > ${LNX}/cscope.files
find $LNX                                                                \
    -name "*.cpp" -print >> ${LNX}/cscope.files
find $LNX                                                                \
    -name "*.java" -print >> ${LNX}/cscope.files
find $LNX                                                                \
    -name "*.hpp" -print >> ${LNX}/cscope.files

cd ${LNX}
cscope -b -q
