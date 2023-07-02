
# Arch Fingertips

scripts to make arch linux simple


## 🪞 Mirror list update

#### This script is used to update the mirrorlist inside /etc/pacman.d/

Step-1) Install reflector.
```bash
  sudo pacman -S reflector
```

Step-2) Download [mirror-update.sh](https://github.com/AvikAgarwala/arch-fingertips/blob/main/mirror-update.sh) .

Step-3) Give executable permission to the script file.
```bash
  chmod +x mirror-update.sh
```

Step-4) Execute the script
```bash
  sudo sh mirror-update.sh
```
Note: This will create a new file named mirrorlist.bak inside /etc/pacman.d/

## Authors

- [Avik Agarwala](https://www.github.com/AvikAgarwala)
- [Alik Agarwala](https://www.github.com/alik-agarwala)
- [Rajdeep Banerjee](https://www.github.com/BanerjeeRajdeep)

