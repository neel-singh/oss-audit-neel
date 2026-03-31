#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Neel Singh | Course: Open Source Software

PACKAGE="git"

# Check if installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep "$PACKAGE"
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    git)
        echo "Git: Distributed version control system used worldwide"
        ;;
    apache2)
        echo "Apache: Web server powering the internet"
        ;;
    mysql-server)
        echo "MySQL: Open-source database system"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
