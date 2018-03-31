IMPORT=${IMPORT:-$(pwd)/commands}
source ${IMPORT}

echo -e "
      ${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
   ${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
 ${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCCCCC${b_green}8888888888${l_blue}CCCCC${b_green}8888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCC${b_green}8888888888888888${l_blue}CC${b_green}8888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCC${b_green}8888888${l_blue}CCCCCCCCC${b_green}88888888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCC${b_green}888888${l_blue}CCCCCCCCCCCCC${b_green}888888${l_blue}CCCCCCCC${b_blue}G0GG   ${l_black}#####${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCC${b_green}888888${l_blue}CCCCCCCCCCCCCCC${b_green}88888${l_blue}CCCCCCCC${b_blue}G0GG  ${l_black}#######${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCC${b_green}888888${l_blue}CCCCCCCCCCCCCCCC${b_green}8888${l_blue}CCCCCCCC${b_blue}G0GG  ${l_black}##${b_write}O${l_black}#${b_write}O${l_black}##${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCC${b_green}8888888${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG  ${l_black}#${b_yellow}lllll${l_black}#${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCC${b_green}8888888888888888888${l_blue}CCCCCCCCCCCCC${b_blue}G0GG${l_black}#${b_write}101${b_yellow}\l/${b_write}010${l_black}#${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCCC${b_green}8888888888888888888${l_blue}CCCCCCCCCC${b_blue}G0G${l_black}#${b_write}101010101010${l_black}#${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCC${b_green}8888888${l_blue}CCCCCCCCC${b_blue}G0${l_black}#${b_write}01010101010101${l_black}#${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCC${b_green}8888${l_blue}CCCCCCCCCCCCCCCC${b_green}888888${l_blue}CCCCCCCC${b_blue}G${l_black}##${b_write}10101010101010${l_black}##${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCC${b_green}88888${l_blue}CCCCCCCCCCCCCCC${b_green}888888${l_blue}CCCCCCCC${b_blue}G${l_black}##${b_write}10101010101010${l_black}##${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCC${b_green}888888${l_blue}CCCCCCCCCCCCC${b_green}888888${l_blue}CCCCCCCCC${b_blue}G${l_black}###${b_write}010101010101${l_black}###${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCC${b_green}88888888${l_blue}CCCCCCCCC${b_green}8888888${l_blue}CCCCCCCCCC${b_blue}G${b_yellow}000${l_black}#${b_write}1010101010${l_black}#${b_yellow}000${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCC${b_yellow}@@${l_blue}CC${b_green}8888${l_blue}CC${b_green}8888888888888888${l_blue}CCCCCCCCCCCC${b_yellow}000000${l_black}#${b_write}010101${l_black}#${b_yellow}000000${reset}
${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCC${b_yellow}@@${l_blue}CC${b_green}8888${l_blue}CCCCC${b_green}8888888888${l_blue}CCCCCCCCCCCCCC${b_yellow}0000000${l_black}#${b_write}101010${l_black}#${b_yellow}0000000${reset}
 ${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCC${b_yellow}@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@${l_blue}CCCC${b_yellow}0000000${l_black}######${b_yellow}0000000${reset}
   ${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
      ${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
      
     ${six_spc}${six_spc}${b_yellow}[${l_blue}-> ${b_write}${STRD} ${l_blue}<-> ${b_write}${DIA}${l_blue}/${b_write}${STRM}${l_blue}/${b_write}${ANO} ${l_blue}<-> ${b_write}${HORA}${l_blue}:${b_write}${MIN}${l_blue}:${b_write}${SEC} ${l_blue}<-${b_yellow}]
     ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow} [${b_write}Usuário ${l_blue}${USER}${b_yellow}]
     ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}  [${b_write}Bem Vindo${b_yellow}]
    ${six_spc}${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}[${b_write}ao${b_yellow}]
    ${six_spc}${six_spc}${b_yellow}[${b_write}${NAME} ${b_purple}GNU${b_red}/${l_blue}${OS} ${b_purple}${VERSION_ID}${b_red}/${l_blue}${KERNEL} ${b_write}${ARCH}${b_yellow}]
${reset}"