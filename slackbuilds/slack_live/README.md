# Download link

bash-4.4$ wget -c http://bear.alienbase.nl/cgit/liveslak/plain/make_slackware_live.sh


# How to create a persistent USB stick from the ISO?

bash-4.4$ wget -c http://bear.alienbase.nl/cgit/liveslak/plain/iso2usb.sh


# Por padrão, as mudanças que você faz ao executar o Slackware Live serão preservadas durante as reinicializações porque o sistema operacional irá escrever todas essas alterações no diretório "persistência" na raiz do dispositivo USB. O script requer uma entrada e um parâmetro de saída no mínimo:

bash-4.4# ./iso2usb.sh -i ~/Download/slackware64-live-14.2.iso -o /dev/sdX


# Alternativamente, você pode usar um arquivo "persistence.img" na raiz do dispositivo
# USB que será montado em loop pelo sistema operacional Live e as mudanças no sistema 
# serão escritas no sistema de arquivos dentro desse arquivo de contêiner. 
# Um recurso que deve ser apreciado por pessoas que desejam usar uma chave USB
# com uma partição VFAT em vez de uma partição Linux ext4. 
# O script requer um parâmetro adicional "-P" neste caso:

bash-4.4# ./iso2usb.sh -P -i ~/Download/slackware64-live-current.iso -o /dev/sdX


# Source: https://alien.slackbook.org/blog/slackware-live-edition/