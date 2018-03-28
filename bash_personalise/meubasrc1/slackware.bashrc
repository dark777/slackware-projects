IMPORT=${IMPORT:-$(pwd)/commands}
source ${IMPORT}

echo -e "
${b_blue}                            ::::::::
                      ::::::::::::::::::::
                   ::::::::::::::::::::::::::
                 ::::::::${b_write}cllcccccllllllll${b_blue}::::::
              :::::::::${b_write}lc               dc${b_blue}:::::::
             ::::::::${b_write}cl   clllccllll    oc${b_blue}:::::::::
            :::::::::${b_write}o   lc${b_blue}::::::::${b_write}co   oc${b_blue}::::::::::
           ::::::::::${b_write}o    cccclc${b_blue}:::::${b_write}clcc${b_blue}::::::::::::
           :::::::::::${b_write}lc        cclccclc${b_blue}:::::::::::::
          ::::::::::::::${b_write}lcclcc          lc${b_blue}::::::::::::
          ::::::::::${b_write}cclcc${b_blue}:::::${b_write}lccclc     oc${b_blue}:::::::::::
          ::::::::::${b_write}o    l${b_blue}::::::::::${b_write}l    lc${b_blue}:::::::::::
           :::::${b_write}cll${b_blue}:${b_write}o     clcllcccll     o${b_blue}:::::::::::
           :::::${b_write}occ${b_blue}:${b_write}o                  clc${b_blue}:::::::::::
            ::::${b_write}ocl${b_blue}:${b_write}ccslclccclclccclclc${b_blue}:::::::::::::
             :::${b_write}oclcccccccccccccllllllllllllll${b_blue}:::::
              ::${b_write}lcc1lcccccccccccccccccccccccco${b_blue}::::
                ::::::::::::::::::::::::::::::::
                  ::::::::::::::::::::::::::::
                     ::::::::::::::::::::::
                          ::::::::::::

${six_spc}${six_spc}${b_yellow}[${b_write}${NAME} ${b_purple}GNU${b_red}/${l_blue}${OS} ${b_purple}${VERSION_ID}${b_red}/${l_blue}${KERNEL} ${b_write}${ARCH}${b_yellow}]
${six_spc}${six_spc}${b_yellow}[${l_blue}-> ${b_write}${STRD} ${l_blue}<-> ${b_write}${DIA}${l_blue}/${b_write}${STRM}${l_blue}/${b_write}${ANO} ${l_blue}<-> ${b_write}${HORA}${l_blue}:${b_write}${MIN}${l_blue}:${b_write}${SEC} ${l_blue}<-${b_yellow}]
${l_blue}${six_spc}${six_spc}${six_spc}  ${b_yellow}[${l_blue}-> ${b_write}Uptime${b_green}: ${b_red}${UPTIME:7:2}${l_blue}:${b_red}${UPTIME:12:3} ${l_blue}<-${b_yellow}]
${reset}"