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

sed -i 's/OpenWrt/WR1200JS/g' package/base-files/files/bin/config_generate

sed -i 's/OpenWrt/WR1200JS/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate

git clone https://github.com/small-5/luci-app-adblock-plus.git package/lean/luci-app-adblock-plus

sed -i 's/root::0:0:99999:7:::/root:$1$8FXWjoqn$vG2VSBEkabshtxxc6H/Yc0:18828:0:99999:7:::/g' package/base-files/files/etc/shadow

sed -i "s/encryption=none/encryption=psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

sed -i '/set wireless.default_radio${devidx}.encryption=psk2/a\set wireless.default_radio${devidx}.key=zh970525.' package/kernel/mac80211/files/lib/wifi/mac80211.sh

sed -i "s/OpenWrt /H-Wrt/g" package/lean/default-settings/files/zzz-default-settings

sed -i "s/YouHua WR1200JS/ZIHONG WR1200JS/g" target/linux/ramips/dts/mt7621_youhua_wr1200js.dts

