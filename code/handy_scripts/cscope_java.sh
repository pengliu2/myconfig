LNX=$1
cd /
find  $LNX -name "*.java" -print > $1/cscope.files
cd $1
cscope -b -q
