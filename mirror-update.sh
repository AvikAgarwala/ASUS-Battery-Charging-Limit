cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
