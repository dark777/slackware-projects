sed 's/;/;\n/g;' | paste -sd';;\n' | sed 's/^/;/g;s/";;"/;/g;s/;;//g;s/"//g'
