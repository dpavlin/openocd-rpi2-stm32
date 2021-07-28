#!/bin/sh -xe
a=2
test ! -z "$1" && a=$1

sudo uhubctl -l 1-1.2 -p 1 -a 1
