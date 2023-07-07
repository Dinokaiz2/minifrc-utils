#!/bin/bash

# STDIN or $1 is MatchMaker match schedule generated with sparse flag -s. Output is FMS Javascript code for match generation.

awk 'NF {
    printf "generateMatch(" $1 ", 0, Match.Type.QUALIFICATION, ";
    printf "[" $2 ", " $4 ", " $6 "], ";
    printf "[" $8 ", " $10 ", " $12 "], ";
    printf "0, 0, ";
    printf "[";
    ORS = ", ";
    if ($3 == 1) print $2;
    if ($5 == 1) print $4;
    if ($7 == 1) print $6;
    if ($9 == 1) print $8;
    if ($11 == 1) print $10;
    if ($13 == 1) print $12;
    ORS = "\n";
    print "]);"; }' < "${1:-/dev/stdin}"
