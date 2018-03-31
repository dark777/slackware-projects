IMPORT=${IMPORT:-$(pwd)/commands}
source ${IMPORT}

echo -e "
   ${six_spc}${six_spc}${six_spc}${six_spc}${l_black}((${b_yellow}__-^^-,-^^-__${l_black}))
    ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}*---*******---*
     ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}*--|${b_cyan}o   o${b_yellow}|--*
        ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}\     /
         ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow})${b_yellow}: :${b_yellow}(
         ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}(${b_red}o${b_cyan}_${b_red}o${b_yellow})
        
          ${six_spc}${six_spc}${six_spc}${b_cyan}__[${l_blue}${OSTYPE1:0:5}${b_green}${OSTYPE1:5:1}${l_blue}${OSTYPE1:6:3}${b_cyan}]__
     ${six_spc}${six_spc}${b_cyan}[${b_green}${OS} ${b_write}${KERNEL} ${l_red}${ARCH} ${b_green}${NAME} ${b_write}${VERSION_ID}${b_cyan}]
         ${six_spc}${b_cyan}[${l_blue}-> ${l_write}${STRD} ${l_blue}<-> ${b_write}${DIA}${b_yellow}.${b_write}${STRM}${b_yellow}.${b_write}${ANO} ${l_blue}<-> ${b_write}${HORA}${l_blue}:${b_write}${MIN}${l_blue}:${b_write}${SEC} ${l_blue}<-${b_cyan}]
${reset}"