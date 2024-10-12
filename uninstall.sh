#!/bin/bash
# Project name: MacBatteryChargeNotifier
# Script name: uninstall.sh
# Description: This script uninstalls the service on computer
# Author: DeathArmy25
# Email: armandoromeo25@outlook.it
# Creation date: October 12, 2024
# Version: 1.0
# Usage: ./uninstall.sh
# Dependencies: no dependencies
# License: GPL V3
# Changelog:
# 1.0 - 12/10/2024 - Script creation

# Script starts
# Functions
confirm() {
    while true; do
        read -p "Are you sure that you want to uninstall the service from the system? [y/N]: " choice
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

# Uninstallation
if confirm; then
    echo "• Too late to abort…"
    echo "~ Disabling service…"
    launchctl unload ~/Library/LaunchAgents/battery.monitor.plist
    
    echo "~ Removing files from filesystem…"
    rm ~/Library/LaunchAgents/battery.monitor.plist
    rm ~/Applications/MacBatteryChargeNotifier.scpt

    echo "• All done! :-)"
else
    echo "• Uninstallation aborted by user, bye!"
fi