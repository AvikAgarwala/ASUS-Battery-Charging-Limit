#!/bin/bash

limit="$1"

if [ "$#" -ge 1 ]; then
    if echo "$limit" | grep -E -q '^[0-9]+$'; then
        if [ "$limit" -gt 100 ] || [ "$limit" -le 0 ]; then
            echo "Invalid input. Please enter a limit between 1 and 100."
        else
            echo "Setting battery capacity limit to $limit%..." 
            echo "$limit" | sudo tee /sys/class/power_supply/BAT?/charge_control_end_threshold > /dev/null
            cd /tmp
            echo "[Unit]
Description=Battery Charge Threshold Configuration
After=multi-user.target
StartLimitBurst=0

[Service]
Type=oneshot
Restart=on-failure
ExecStart=/bin/bash -c 'echo $limit > /sys/class/power_supply/BAT0/charge_control_end_threshold'

[Install]
WantedBy=multi-user.target" >battery-manager.service

            echo "Created battery-manager.service successfully."
            sudo cp battery-manager.service /etc/systemd/system/
            sudo systemctl enable battery-manager.service
            echo "Battery manager service enabled."

        fi
    else
        echo "Invalid input. Please enter a numeric value."
    fi
else
    echo "Please provide a limit and try again."
fi
