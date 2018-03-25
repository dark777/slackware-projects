#!/bin/sh
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
           :::::${b_red}c${b_write}ll${b_blue}:${b_write}o     clcllcccll     o${b_blue}:::::::::::
           :::::${b_red}o${b_write}cc${b_blue}:${b_write}o                  clc${b_blue}:::::::::::
            ::::${b_red}o${b_write}cl${b_blue}:${b_write}ccslclccclclccclclc${b_blue}:::::::::::::
             :::${b_red}o${b_write}clcccccccccccccllllllllllllll${b_blue}:::::
              ::${b_red}lcc1lcccccccccccccccccccccccco${b_blue}::::
                ::::::::::::::::::::::::::::::::
                  ::::::::::::::::::::::::::::
                     ::::::::::::::::::::::
                          ::::::::::::

${six_spc}${six_spc}${b_yellow}[${b_write}${NAME} ${b_purple}GNU${b_red}/${b_blue}${OS} ${b_purple}${VERSION_ID}${b_red}/${b_blue}${KERNEL} ${b_write}${ARCH}${b_yellow}]
${six_spc}${six_spc}${b_yellow}[${b_blue}-> ${b_write}${STRD} ${b_blue}<-> ${b_write}${DIA}${b_blue}/${b_write}${STRM}${b_blue}/${b_write}${ANO} ${b_blue}<-> ${b_write}${HORA}${b_blue}:${b_write}${MIN}${b_blue}:${b_write}${SEC} ${b_blue}<-${b_yellow}]
${b_blue}${six_spc}${six_spc}${six_spc}   ${b_yellow}[${b_blue}-> ${b_write}Uptime${b_green}: ${b_red}${UPTIME:0:3}${b_blue}:${b_red}${UPTIME:4:4} ${b_blue}<-${b_yellow}]
${reset}"
