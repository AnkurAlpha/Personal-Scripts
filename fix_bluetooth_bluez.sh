#!/usr/bin/env bash
sudo systemctl stop bluetooth
sudo modprobe -r btusb
sleep 3
sudo modprobe btusb
sleep 3
sudo rfkill unblock bluetooth
sudo systemctl start bluetooth
