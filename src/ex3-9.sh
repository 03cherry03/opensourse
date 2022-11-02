#!/bin/sh

input=$1
eval grep $input DB.txt
exit 0
