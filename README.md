## 🔋 ASUS BATTERY CHARGING LIMIT

#### This script is used to set the charging limit for ASUS laptops (tested with `ASUS ZenBook 14 UX425EA` and `ASUS Zephyrus G14 GA401QC`).

---

### For Linux 🐧:

`Step 1:` Download the [asus-battery-health-charging.sh](asus-battery-health-charging.sh) script.

`Step 2:` Grant executable permission to the script file.
```bash
  chmod +x asus-battery-health-charging.sh
```

`Step 3:` Execute the script, passing the desired charging limit value (1 - 100) as a command-line argument.
```bash
  sudo sh asus-battery-health-charging.sh 60
```
`Note:` This will set the battery charging limit to 60%. The setting will persist even after restarting. To change the limit, follow Step 3 and pass the desired value.

---

### For Windows 🪟:

#### Please run PowerShell with Administrator priviledges.

`Step 1:` Download the [asus-battery-health-charging.ps1](asus-battery-health-charging.ps1) script.

`Step 2:` Grant executable permission to the script file. (Press Y upon prompt).
```powershell
  Set-ExecutionPolicy RemoteSigned
```

`Step 3:` Execute the script, passing the desired charging limit value (1 - 100) upon prompt.
```powershell
  .\asus-battery-health-charging.ps1
```

`Alternate Step:` If you have difficulty running the script, simple copy the code to administrator PowerShell and set the limit.

`Note:`  The setting will persist even after restarting. To change the limit, follow Step 3 and pass the desired value. If you want to check limit status:
```powershell
  powercfg -q 381b4222-f694-41f0-9685-ff5bb260df2e SUB_BATTERY
```

---

<!-- Contributors -->
## Contributors

<!-- readme: collaborators,contributors -start -->
<table>
<tr>
    <td align="center">
        <a href="https://github.com/AvikAgarwala">
            <img src="https://avatars.githubusercontent.com/u/98759608?v=4" width="100;" alt="AvikAgarwala"/>
            <br />
            <sub><b>Avik Agarwala</b></sub>
        </a>
    </td>
    <td align="center">
        <a href="https://github.com/Alik-Agarwala">
            <img src="https://avatars.githubusercontent.com/u/98759503?v=4" width="100;" alt="Alik-Agarwala"/>
            <br />
            <sub><b>Alik Agarwala</b></sub>
        </a>
    </td>
    <td align="center">
        <a href="https://github.com/BanerjeeRajdeep">
            <img src="https://avatars.githubusercontent.com/u/111561385?v=4" width="100;" alt="BanerjeeRajdeep"/>
            <br />
            <sub><b>Rajdeep Banerjee</b></sub>
        </a>
    </td></tr>
</table>
<!-- readme: collaborators,contributors -end -->

---

<!-- License -->
## License
[MIT](./LICENSE)
