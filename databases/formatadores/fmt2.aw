# !/usr/bin/awk -f

awk 'BEGIN{FS=OFS=";"} {for (i=1; i<NF; i+=3) print $i, $(i+1), $(i+2)}' | sed 's/"//g;s/$/;/g' 
