#!/bin/bash

count=101
charge_now=$(cat /sys/class/power_supply/macsmc-battery/charge_now)
charge_full=$(cat /sys/class/power_supply/macsmc-battery/charge_full)
battery_percent=$(((charge_now*100)/charge_full))
status=$(cat /sys/class/power_supply/macsmc-battery/status)

if [ $status = "Discharging" ];then
	if [ $battery_percent -eq 100 ]; then
		echo "󰁹$battery_percent%"
	elif [ $battery_percent -gt 90 ]; then
		echo "󰂂$battery_percent%"
	elif [ $battery_percent -gt 80 ]; then
                echo "󰂂$battery_percent%"
	elif [ $battery_percent -gt 70 ]; then
                echo "󰂀$battery_percent%"
	elif [ $battery_percent -gt 60 ]; then
		echo "󰁿$battery_percent%"
	elif [ $battery_percent -gt 50 ]; then
                echo "󰁾$battery_percent%"
	elif [ $battery_percent -gt 40 ]; then 
                echo "󰁽$battery_percent%"
	elif [ $battery_percent -gt 30 ]; then
                echo "󰁼$battery_percent%"
	elif [ $battery_percent -gt 20 ]; then
                echo "󰁻$battery_percent%"
	elif [ $battery_percent -gt 10 ]; then
                echo "󰁺$battery_percent%"
	elif [ $battery_percent -gt 0 ]; then
                echo "󰂃$battery_percent%"
	fi
elif [ $status = "Charging" ]; then
	if [ $battery_percent -eq 100 ]; then
                echo "󰂅$battery_percent%"
        elif [ $battery_percent -gt 90 ]; then
                echo "󰂊$battery_percent%"
        elif [ $battery_percent -gt 80 ]; then
                echo "󰂊$battery_percent%"
        elif [ $battery_percent -gt 70 ]; then
                echo "󰢞$battery_percent%"
        elif [ $battery_percent -gt 60 ]; then
                echo "󰂉$battery_percent%"
        elif [ $battery_percent -gt 50 ]; then
                echo "󰢝$battery_percent%"
        elif [ $battery_percent -gt 40 ]; then
                echo "󰂈$battery_percent%"
        elif [ $battery_percent -gt 30 ]; then
                echo "󰂇$battery_percent%"
        elif [ $battery_percent -gt 20 ]; then
                echo "󰂆$battery_percent%"
        elif [ $battery_percent -gt 10 ]; then
                echo "󰢜$battery_percent%"
        elif [ $battery_percent -gt 0 ]; then
                echo "󰢜$battery_percent%"
        fi
fi
