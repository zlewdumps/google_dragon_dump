#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/700b0600.sdhci/by-name/recovery:11976704:eb961ec1fa00ce1f4652b251c26b5025ef3b2109; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/700b0600.sdhci/by-name/KERN-A:9502720:17c157d5f149275eb21d4ba99f9a60335cf81b9e EMMC:/dev/block/platform/700b0600.sdhci/by-name/recovery eb961ec1fa00ce1f4652b251c26b5025ef3b2109 11976704 17c157d5f149275eb21d4ba99f9a60335cf81b9e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
