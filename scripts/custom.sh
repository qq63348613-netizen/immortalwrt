#!/bin/bash

# 更新 feeds
./scripts/feeds update -a
./scripts/feeds install -a

# ===== 核心驱动 =====
echo "CONFIG_PACKAGE_kmod-atlantic=y" >> .config
echo "CONFIG_PACKAGE_kmod-macsec=y" >> .config
echo "CONFIG_PACKAGE_kmod-crypto-gcm=y" >> .config
echo "CONFIG_PACKAGE_ethtool=y" >> .config
echo "CONFIG_PACKAGE_pciutils=y" >> .config

# ===== Passwall =====
echo "CONFIG_PACKAGE_luci-app-passwall=y" >> .config
echo "CONFIG_PACKAGE_xray-core=y" >> .config
echo "CONFIG_PACKAGE_sing-box=y" >> .config

# ===== AdGuardHome =====
echo "CONFIG_PACKAGE_AdGuardHome=y" >> .config
echo "CONFIG_PACKAGE_luci-app-adguardhome=y" >> .config

# ===== Docker =====
echo "CONFIG_PACKAGE_docker=y" >> .config
echo "CONFIG_PACKAGE_dockerd=y" >> .config
echo "CONFIG_PACKAGE_docker-compose=y" >> .config
echo "CONFIG_PACKAGE_luci-app-dockerman=y" >> .config

# ===== LuCI 全家桶 =====
echo "CONFIG_PACKAGE_luci=y" >> .config
echo "CONFIG_PACKAGE_luci-i18n-base-zh-cn=y" >> .config
echo "CONFIG_PACKAGE_luci-app-firewall=y" >> .config
echo "CONFIG_PACKAGE_luci-app-opkg=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ttyd=y" >> .config
echo "CONFIG_PACKAGE_luci-app-filetransfer=y" >> .config

# ===== 网络增强 =====
echo "CONFIG_PACKAGE_irqbalance=y" >> .config
echo "CONFIG_PACKAGE_kmod-tcp-bbr=y" >> .config

# 默认配置
make defconfig
