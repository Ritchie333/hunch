#!/bin/zsh

rm -rf hunch
#sna2skool.py -H -c sources/hunch.ctl sources/hunch.z80 -e 61000 > sources/hunch.skool
skool2html.py -H sources/hunch.skool
