#!/bin/sh
IMPORT=${IMPORT:-$(pwd)/commands}
source ${IMPORT}

echo -e "
                                ${six_spc}${six_spc}${six_spc}${six_spc}${b_blue}#####
                               ${six_spc}${six_spc}${six_spc}${six_spc}${b_blue}#######
                               ${six_spc}${six_spc}${six_spc}${six_spc}${b_blue}##${b_write}O${b_blue}#${b_write}O${b_blue}##
                               ${six_spc}${six_spc}${six_spc}${six_spc}${b_blue}#${b_yellow}lllll${b_blue}#
${six_spc}${six_spc}${b_yellow}((__-^^-,-^^-__))            ${six_spc}${six_spc}${b_blue}#${b_write}101${b_yellow}\l/${b_write}010${b_blue}#
 ${six_spc}${six_spc}${b_yellow}*---*******---*            ${six_spc}${six_spc}${b_blue}#${b_write}010101010101${b_blue}#
  ${six_spc}${six_spc}${b_yellow}*--|${b_cyan}o   o${b_yellow}|--*            ${six_spc}${six_spc}${b_blue}#${b_write}10101010101010${b_blue}#
     ${six_spc}${six_spc}${b_yellow}\     /     ${six_spc}${b_green}+  ${six_spc}${six_spc}${b_blue}##${b_write}10101010101010${b_blue}##
      ${six_spc}${six_spc}${b_yellow})${b_yellow}: :${b_yellow}(               ${six_spc}${six_spc}${b_blue}###${b_write}010101010101${b_blue}###
      ${six_spc}${six_spc}${b_yellow}(${b_red}o${b_cyan}_${b_red}o${b_yellow})               ${six_spc}${six_spc}${b_yellow}000${b_blue}#${b_write}1010101010${b_blue}#${b_yellow}000
                         ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}000000${b_blue}#${b_write}010101${b_blue}#${b_yellow}000000
                        ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}0000000${b_blue}#${b_write}101010${b_blue}#${b_yellow}0000000
                         ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}0000000${b_blue}######${b_yellow}0000000
           ${six_spc}${six_spc}${six_spc}${b_yellow}__[${b_blue}GNU${b_green}+${b_blue}${OS}${b_yellow}]__
          ${six_spc}${six_spc}${six_spc}${six_spc}${b_green} =
   ${six_spc}${six_spc}${b_yellow}[${b_write}${NAME} ${b_purple}GNU${b_red}/${b_blue}${OS} ${b_purple}${VERSION_ID}${b_red}/${b_blue}${KERNEL} ${b_write}${ARCH}${b_yellow}]
   ${six_spc}${six_spc}${b_yellow}[${b_blue}-> ${b_write}${STRD} ${b_blue}<-> ${b_write}${DIA} ${STRM}${b_blue}/${b_write}${ANO} ${b_blue}<-> ${b_write}${HORA}${b_blue}:${b_write}${MIN}${b_blue}:${b_write}${SEC} ${b_blue}<-${b_yellow}]
${reset}"