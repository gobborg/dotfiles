#!/bin/sh

bl_device=/sys/class/backlight/acpi_video0/brightness
echo $(($(cat $bl_device)+1)) | sudo tee $bl_device
