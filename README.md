
# Arch Fingertips

Scripts to simplify Arch Linux usage.

<!-- Mirror list update -->
## 🪞 MIRROR LIST UPDATE

#### This script is used to update the mirrorlist located in `/etc/pacman.d/`.

`Step 1:` Install reflector.
```bash
  sudo pacman -S reflector
```

`Step 2:` Download the [mirror-update.sh](https://github.com/AvikAgarwala/arch-fingertips/blob/main/mirror-update.sh) script.

`Step 3:` Grant executable permission to the script file.
```bash
  chmod +x mirror-update.sh
```

`Step 4:` Execute the script.
```bash
  sudo sh mirror-update.sh
```
`Note:` This will create a new file named `mirrorlist.bak` inside `/etc/pacman.d/`.

<!-- Set ASUS battery charging limit -->
## 🔋 ASUS BATTERY CHARGING LIMIT

#### This script is used to set the charging limit for ASUS laptops (tested with ASUS ZenBook 14 UX425EA).

`Step 1:` Download the [asus-battery-health-charging.sh](https://github.com/AvikAgarwala/arch-fingertips/blob/main/asus-battery-health-charging.sh) script.

`Step 2:` Grant executable permission to the script file.
```bash
  chmod +x asus-battery-health-charging.sh
```

`Step 3:` Execute the script, passing the desired charging limit value (1 - 100) as a command-line argument.
```bash
  sudo sh asus-battery-health-charging.sh 60
```
`Note:` This will set the battery charging limit to 60%. The setting will persist even after restarting. To change the limit, follow Step 3 and pass the desired value.


<!-- Authors -->
## Authors

- [Avik Agarwala](https://www.github.com/AvikAgarwala)
- [Alik Agarwala](https://www.github.com/alik-agarwala)
- [Rajdeep Banerjee](https://www.github.com/BanerjeeRajdeep)

