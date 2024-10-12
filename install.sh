#!/bin/bash
# Project name: MacBatteryChargeNotifier
# Script name: install.sh
# Description: This script installs the service on computer
# Author: DeathArmy25
# Email: armandoromeo25@outlook.it
# Creation date: October 12, 2024
# Version: 1.0
# Usage: ./install.sh
# Dependencies: no dependencies
# License: GPL V3
# Changelog:
# 1.0 - 12/10/2024 - Script creation

# Script starts
# Functions
confirm() {
    while true; do
        read -p "Are you sure that you want to install the service on the system? [y/N]: " choice
        case $choice in
            [Yy]* ) return 0;;
            [Nn]* | "" ) return 1;;
            * ) echo "Please, answer with 'y' or 'n'.";;
        esac
    done
}

# Super user check
if [ "$EUID" -eq 0 ]; then
    echo "• Please, do not run this script as super user!"
    exit 1
fi

# Variables
read -p "• Insert your Telegram Bot token: " your_telegram_bot_token
read -p "• Insert your Telegram ID: " your_telegram_id
read -p "• Insert time of check delay (in minutes): " minutes
read -p "• Insert low battery trigger: " low_level
read -p "• Insert full battery trigger: " full_level

your_macos_username=$(whoami)

# Installation
if confirm; then
    echo "• Too late to abort…"
    echo "~ Creating temporary folder…"
    mkdir tmp

    echo "~ Copying source files into temp folder…"
    cp src/battery.monitor.plist tmp/battery.monitor.plist
    cp src/MacBatteryChargeNotifier.scpt tmp/MacBatteryChargeNotifier.scpt

    echo "~ Replacing input infos into temporary files…"
    # MacBatteryChargeNotifier.scpt
    sed -i '' 's/your_telegram_bot_token/'"$your_telegram_bot_token"'/g' tmp/MacBatteryChargeNotifier.scpt
    sed -i '' 's/your_telegram_id/'"$your_telegram_id"'/g' tmp/MacBatteryChargeNotifier.scpt
    sed -i '' 's/minutes/'"$minutes"'/g' tmp/MacBatteryChargeNotifier.scpt
    sed -i '' 's/low_level/'"$low_level"'/g' tmp/MacBatteryChargeNotifier.scpt
    sed -i '' 's/full_level/'"$full_level"'/g' tmp/MacBatteryChargeNotifier.scpt
    # battery.monitor.plist
    sed -i '' 's/your_macos_username/'"$your_macos_username"'/g' tmp/battery.monitor.plist

    echo "~ Copying file into filesystem…"
    cp tmp/battery.monitor.plist ~/Library/LaunchAgents/battery.monitor.plist
    cp tmp/MacBatteryChargeNotifier.scpt ~/Applications/MacBatteryChargeNotifier.scpt

    echo "~ Removing temporary folder…"
    rm -r tmp/

    echo "~ Enabling service…"
    launchctl load ~/Library/LaunchAgents/battery.monitor.plist

    echo "• All done! :-)"
else
    echo "• Installation aborted by user, bye!"
fi