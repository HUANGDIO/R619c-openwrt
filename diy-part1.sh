#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

sed -i 's/OpenWrt/G-DOCK/g' package/base-files/files/bin/config_generate

#sed -i 's/OpenWrt/PandoraBox/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

git clone https://github.com/small-5/luci-app-adblock-plus.git package/lean/luci-app-adblock-plus
