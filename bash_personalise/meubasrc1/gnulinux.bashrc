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
      ${six_spc}${six_spc}${b_yellow}(${b_red}o_o${b_yellow})               ${six_spc}${six_spc}${b_yellow}000${b_blue}#${b_write}1010101010${b_blue}#${b_yellow}000
                         ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}000000${b_blue}#${b_write}010101${b_blue}#${b_yellow}000000
                        ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}0000000${b_blue}#${b_write}101010${b_blue}#${b_yellow}0000000
                         ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}0000000${b_blue}######${b_yellow}0000000
           ${six_spc}${six_spc}${six_spc}${b_yellow}__[${b_blue}GNU${b_green}+${b_blue}$(uname -s)${b_yellow}]__
          ${six_spc}${six_spc}${six_spc}${six_spc}${b_green} =
${six_spc}${six_spc}${b_yellow}[${b_write}${NAME} ${b_purple}GNU${b_red}/${b_blue}$(uname -s) ${b_purple}${VERSION_ID}${b_red}/${b_blue}$(uname -r) ${b_write}$(uname -m)${b_yellow}]
${six_spc}${six_spc}${b_yellow}[${b_blue}-> ${b_write}$(date +%a) ${b_blue}<-> ${b_write}$(date +%d) $(date +%b)${b_blue}/${b_write}$(date +%Y) ${b_blue}<-> ${b_write}$(date +%H)${b_blue}:${b_write}$(date +%M)${b_blue}:${b_write}$(date +%S) ${b_blue}<-${b_yellow}]
${reset}
"