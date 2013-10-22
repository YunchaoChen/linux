#!/bin/bash
fastboot erase kernel
fastboot flash kernel uImage
fastboot erase ramdisk
fastboot flash ramdisk ramdisk.img
fastboot erase system
fastboot oem onfly system
fastboot flash system system.img
fastboot erase userdata
fastboot flash userdata userdata.img
fastboot reboot
