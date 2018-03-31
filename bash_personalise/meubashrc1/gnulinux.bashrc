IMPORT=${IMPORT:-$(pwd)/commands}
source ${IMPORT}

echo -e "
                                 ${six_spc}${six_spc}${six_spc}${six_spc}${l_black}#####
                                ${six_spc}${six_spc}${six_spc}${six_spc}${l_black}#######
                                ${six_spc}${six_spc}${six_spc}${six_spc}${l_black}##${b_write}O${l_black}#${b_write}O${l_black}##
                                ${six_spc}${six_spc}${six_spc}${six_spc}${l_black}#${b_yellow}lllll${l_black}#
${six_spc}${six_spc}${l_black}((${b_yellow}__-^^-,-^^-__${l_black}))             ${six_spc}${six_spc}${l_black}#${b_write}101${b_yellow}\l/${b_write}010${l_black}#
 ${six_spc}${six_spc}${b_yellow}*---*******---*            ${six_spc}${six_spc}${l_black}#${b_write}101010101010${l_black}#
  ${six_spc}${six_spc}${b_yellow}*--|${b_cyan}o   o${b_yellow}|--*            ${six_spc}${six_spc}${l_black}#${b_write}01010101010101${l_black}#
     ${six_spc}${six_spc}${b_yellow}\     /     ${six_spc}${b_green}+  ${six_spc}${six_spc}${l_black}##${b_write}10101010101010${l_black}##
      ${six_spc}${six_spc}${b_yellow})${b_yellow}: :${b_yellow}(               ${six_spc}${six_spc}${l_black}###${b_write}010101010101${l_black}###
      ${six_spc}${six_spc}${b_yellow}(${b_red}o${b_cyan}_${b_red}o${b_yellow})               ${six_spc}${six_spc}${b_yellow}000${l_black}#${b_write}1010101010${l_black}#${b_yellow}000
                         ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}000000${l_black}#${b_write}010101${l_black}#${b_yellow}000000
                        ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}0000000${l_black}#${b_write}101010${l_black}#${b_yellow}0000000
                         ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}0000000${l_black}######${b_yellow}0000000
           ${six_spc}${six_spc}${six_spc}${b_yellow}__[${l_blue}GNU${b_green}+${l_blue}${OS}${b_yellow}]__
          ${six_spc}${six_spc}${six_spc}${six_spc}${b_green} =
   ${six_spc}${six_spc}${b_yellow}[${b_write}${NAME} ${b_purple}GNU${b_red}/${l_blue}${OS} ${b_purple}${VERSION_ID}${b_red}/${l_blue}${KERNEL} ${b_write}${ARCH}${b_yellow}]
   ${six_spc}${six_spc}${b_yellow}[${l_blue}-> ${b_write}${STRD} ${l_blue}<-> ${b_write}${DIA} ${STRM}${l_blue}/${b_write}${ANO} ${l_blue}<-> ${b_write}${HORA}${l_blue}:${b_write}${MIN}${l_blue}:${b_write}${SEC} ${l_blue}<-${b_yellow}]
${reset}"