
# Arch Fingertips

scripts to make arch linux simple

<!-- Mirror list update -->
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

<!-- Set ASUS battery charging limit -->
## 🔋ASUS battery charging limit

#### This script is used to set the charging limit for ASUS laptops (tested with ASUS ZenBook 14 UX425EA)

Step-1) Download [asus-battery-health-charging.sh](https://github.com/AvikAgarwala/arch-fingertips/blob/main/asus-battery-health-charging.sh) .

Step-2) Give executable permission to the script file.
```bash
  chmod +x asus-battery-health-charging.sh
```

Step-4) Execute the script [pass the charging limit value (1 - 100) as command line argument]
```bash
  sudo sh asus-battery-health-charging.sh 60
```
Note: This will set the battery charging limit to 60%. This will work even after restarting. To change the limit according to your own just follow [step-4] and pass the value you want.


<!-- Authors -->
## Authors

- [Avik Agarwala](https://www.github.com/AvikAgarwala)
- [Alik Agarwala](https://www.github.com/alik-agarwala)
- [Rajdeep Banerjee](https://www.github.com/BanerjeeRajdeep)

