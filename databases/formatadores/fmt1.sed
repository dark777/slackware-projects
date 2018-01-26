#!/bin/sed -f
sed 's/;/\n/g;'|sed 'N;N;s/\n//'|sed 'N;s/\n//g;'|sed '/^$/d'|sed 's/"/;/g;s/;;/;/g;s/^;.//g'
