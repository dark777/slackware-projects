#!/bin/awk -f

BEGIN{FS=OFS=";"} {for (i=1; i<NF; i+=3) print $i, $(i+1), $(i+2)}