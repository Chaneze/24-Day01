#!/bin/sh
export VAR_1=$(echo $FT_NBR1 | sed "s/'/0/g;s/\\\/1/g;s/\"/2/g;s/?/3/g;s/\\!/4/g"); export VAR_2=$(echo $FT_NBR2 | sed "s/m/0/g;s/r/1/g;s/d/2/g;s/o/3/g;s/c/4/g") ; echo "obase=13;ibase=5;$VAR_1+$VAR_2" | bc | sed "s/0/g/g;s/1/t/g;s/2/a/g;s/3/i/g;s/4/o/g;s/5/ /g;s/6/l/g;s/7/u/g;s/8/S/g;s/9/n/g;s/A/e/g;s/B/m/g;s/C/f/g"
