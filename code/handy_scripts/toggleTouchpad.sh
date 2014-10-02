#!/bin/bash

state=`synclient -l |grep TouchpadOff |cut -b 31`
echo $state
if [ ${state} = 1 ]
then
    synclient TouchpadOff=0
else
    synclient TouchpadOff=1
fi
