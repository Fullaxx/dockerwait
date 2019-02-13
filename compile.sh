#!/bin/sh

gcc -Wall -pedantic -Os dockerwait.c -o dockerwait && \
gcc -Wall -pedantic -Os -static dockerwait.c -o dockerwait.static
