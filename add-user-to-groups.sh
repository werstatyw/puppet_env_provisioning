#!/bin/bash
# Purpose - add user to needed security groups
# Author - Alex G <github.com/werstatyw> under GPL v2.0+
# ------------------------------------------------------------------

read -p "Enter username : " username
usermod -a -G ssh,docker "$username"
