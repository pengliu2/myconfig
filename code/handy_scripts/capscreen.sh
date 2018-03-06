#!/bin/bash
adb shell "screencap -p /sdcard/screen.png"
adb pull /sdcard/screen.png $1
