#!/bin/sh
cat /etc/passwd | grep -v '^#' | sed -n 'n;p' | rev | cut -d : -f 7 | sort -r | sed -n "$FT_LINE1,$FT_LINE2 p" | sed 's/$/,/' | tr '\n' ' ' | sed 's/, $//' | sed '$s/$/\./' | sed "s/\n$//" | tr -d "\n"
