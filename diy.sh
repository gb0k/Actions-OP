#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: digitcloud
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.2/g' package/base-files/files/bin/config_generate

# Deassociate bootstrap as default theme
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# Delete default password
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/default-settings/files/zzz-default-settings

# Build x86_64 with Linux Kernel 4.19
sed -i "s/4.14/4.19/g" target/linux/x86/Makefile

# Update SmartDNS revision to latest
# sed -i "s/d6c34658af0d4aac94655a139030c5ec12884754/ce46ac58a7a30e122566e75438d1ddbb0d569f9a/g" package/lean/smartdns/Makefile
# sed -i "s/2019.12.15/2020.05.10/g" package/lean/smartdns/Makefile
