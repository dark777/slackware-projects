IMPORT=${IMPORT:-$(pwd)/commands}
source ${IMPORT}

echo -e "
      ${six_spc}${six_spc}${b_blue}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
   ${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
 ${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCCCCCCC${b_green}8888888888${l_blue}CCCCC${b_green}8888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCCCC${b_green}8888888888888888${l_blue}CC${b_green}8888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCC${b_green}8888888${l_blue}CCCCCCCCC${b_green}88888888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCC${b_green}888888${l_blue}CCCCCCCCCCCCC${b_green}888888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCC${b_green}888888${l_blue}CCCCCCCCCCCCCCC${b_green}88888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCC${b_green}888888${l_blue}CCCCCCCCCCCCCCCC${b_green}8888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCC${b_green}8888888${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCC${b_green}8888888888888888888${l_blue}CCCCCCCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCCCCC${b_green}8888888888888888888${l_blue}CCCCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCC${b_green}8888888${l_blue}CCCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCC${b_green}8888${l_blue}CCCCCCCCCCCCCCCC${b_green}888888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCC${b_green}88888${l_blue}CCCCCCCCCCCCCCC${b_green}888888${l_blue}CCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCC${b_green}888888${l_blue}CCCCCCCCCCCCC${b_green}888888${l_blue}CCCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCCCCCC${b_green}88888888${l_blue}CCCCCCCCC${b_green}8888888${l_blue}CCCCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCC${b_yellow}@@${l_blue}CC${b_green}8888${l_blue}CC${b_green}8888888888888888${l_blue}CCCCCCCCCCCC${b_blue}G0GG
${six_spc}${six_spc}GG0G${l_blue}CCCC${b_yellow}@@${l_blue}CC${b_green}8888${l_blue}CCCCC${b_green}8888888888${l_blue}CCCCCCCCCCCCCCC${b_blue}G0GG
 ${six_spc}${six_spc}GG0G${l_blue}CCC${b_yellow}@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@${l_blue}CCC${b_blue}G0GG
   ${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
      ${six_spc}${six_spc}GG0G${l_blue}CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC${b_blue}G0GG
      
     ${six_spc}${six_spc}${b_yellow}[${l_blue}-> ${b_write}${STRD} ${l_blue}<-> ${b_write}${DIA}${l_blue}/${b_write}${STRM}${l_blue}/${b_write}${ANO} ${l_blue}<-> ${b_write}${HORA}${l_blue}:${b_write}${MIN}${l_blue}:${b_write}${SEC} ${l_blue}<-${b_yellow}]
     ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow} [${b_write}Usuário ${l_blue}${USER}${b_yellow}]
     ${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}  [${b_write}Bem Vindo${b_yellow}]
    ${six_spc}${six_spc}${six_spc}${six_spc}${six_spc}${b_yellow}[${b_write}ao${b_yellow}]
    ${six_spc}${six_spc}${b_yellow}[${b_write}${NAME} ${b_purple}GNU${b_red}/${l_blue}${OS} ${b_purple}${VERSION_ID}${b_red}/${l_blue}${KERNEL} ${b_write}${ARCH}${b_yellow}]
${reset}"