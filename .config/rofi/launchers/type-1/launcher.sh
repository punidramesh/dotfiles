#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-6

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-6'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
