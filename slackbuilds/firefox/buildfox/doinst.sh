( cd usr/bin ; rm -rf firefox )
( cd usr/bin ; ln -sf /usr/lib64/firefox-59.0b8/firefox firefox )
( cd usr/share/pixmaps ; rm -rf firefox.png )
( cd usr/share/pixmaps ; ln -sf /usr/share/icons/hicolor/256x256/apps/firefox.png firefox.png )