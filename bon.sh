#!/bin/sh
ldapsearch -Q sn='*bon*' | grep 'numEntries:' | cut -c15-
