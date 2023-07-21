# :battery: ASUS BATTERY CHARGING LIMIT

#### This script is used to set the charging limit for ASUS laptops (tested with ASUS ZenBook 14 UX425EA).

`Step 1:` Download the [asus-battery-health-charging.sh](https://github.com/AvikAgarwala/ASUS-Battery-Charging-Limit/blob/main/asus-battery-health-charging.sh) script.

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
## Contributors
<a href="https://github.com/AvikAgarwala/ASUS-Battery-Charging-Limit/contributors"><img src="https://contrib.rocks/image?repo=AvikAgarwala/ASUS-Battery-Charging-Limit"></a>

<!-- License -->
## License
[MIT](./LICENSE)
