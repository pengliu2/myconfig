LNX=$1
cd /
find  $LNX                                                                \
    -path "$LNX/arch/*" ! -path "$LNX/arch/arm*" -prune -o               \
    -path "$LNX/arch/arm/mach-*" ! -path "$LNX/arch/arm/mach-msm*" -prune -o \
    -path "$LNX/tmp*" -prune -o                                           \
    -path "$LNX/Documentation*" -prune -o                                 \
    -path "$LNX/scripts*" -prune -o                                       \
    -name "*.[chxsS]" -print > $1/cscope.files

cd $1
cscope -b -q -k
