IMPORT=${IMPORT:-$(pwd)/commands}
source ${IMPORT}

echo -e "
                     ${six_spc}${six_spc}${l_black}#####
                    ${six_spc}${six_spc}${l_black}#######
                    ${six_spc}${six_spc}${l_black}##${b_write}O${l_black}#${b_write}O${l_black}##
                    ${six_spc}${six_spc}${l_black}#${b_yellow}lllll${l_black}#
                  ${six_spc}${six_spc}${l_black}#${b_write}101${b_yellow}\l/${b_write}010${l_black}#
                ${six_spc}${six_spc}${l_black}#${b_write}101010101010${l_black}#
               ${six_spc}${six_spc}${l_black}#${b_write}01010101010101${l_black}#
              ${six_spc}${six_spc}${l_black}##${b_write}10101010101010${l_black}##
              ${six_spc}${six_spc}${l_black}###${b_write}010101010101${l_black}###
              ${six_spc}${six_spc}${b_yellow}000${l_black}#${b_write}1010101010${l_black}#${b_yellow}000
             ${six_spc}${six_spc}${b_yellow}000000${l_black}#${b_write}010101${l_black}#${b_yellow}000000
            ${six_spc}${six_spc}${b_yellow}0000000${l_black}#${b_write}101010${l_black}#${b_yellow}0000000
             ${six_spc}${six_spc}${b_yellow}0000000${l_black}######${b_yellow}0000000
             
     ${six_spc}${six_spc}${b_yellow}[${b_write}${NAME} ${b_green}${VERSION_ID}${b_red}/${b_write}${OS} ${b_green}${KERNEL} ${l_red}${ARCH}${b_yellow}]
   ${six_spc}${six_spc}${b_yellow}[${l_blue}-> ${b_write}${STRD} ${l_blue}<-> ${b_write}${DIA}${l_blue}.${b_write}${STRM}${l_blue}.${b_write}${ANO} ${l_blue}<-> ${b_write}${HORA}${l_blue}:${b_write}${MIN}${l_blue}:${b_write}${SEC} ${l_blue}<-${b_yellow}]
${reset}"