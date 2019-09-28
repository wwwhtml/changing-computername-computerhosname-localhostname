#!/bin/bash

#Script Name: changin-computername-computerhostname-localhostname.sh

#Author: Daniel Arauz

#Date: May 29, 2018

#Description: This script it for changing the computer name, computer hostname, and localhostname.
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| This script is to rename computer name, hostname, and local hostname              |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo
echo "User Accounts: " 
dscl . list /Users
echo
echo "Current Hostname: " 
hostname
echo
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Please input the new hostname, then press [ENTER]: " NewHostName
name="$NewHostName"
local="$NewHostName"
sudo scutil --set HostName "$name"  && sudo scutil --set ComputerName "$name" && sudo scutil --set LocalHostName "$local"
echo
echo		
echo "Hostname changed to: " 
hostname
echo
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press [ENTER] to continue"
