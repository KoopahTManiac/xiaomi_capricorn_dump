#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:25003342:b3d41164acf84520d6fd502cd72a8fad1213c77f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23528778:68d99ec3b7dfe32cba6a7e4c0c9cc7b1cda24836 EMMC:/dev/block/bootdevice/by-name/recovery b3d41164acf84520d6fd502cd72a8fad1213c77f 25003342 68d99ec3b7dfe32cba6a7e4c0c9cc7b1cda24836:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
