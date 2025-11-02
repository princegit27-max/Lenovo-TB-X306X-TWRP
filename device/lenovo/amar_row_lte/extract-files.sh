#!/bin/bash
# Run from repository root on your PC (with adb available and device connected)
# This script pulls the basic vendor and relevant partition files from the device.

set -e
OUTDIR=vendor/lenovo/X306X
mkdir -p $OUTDIR

adb root || true
adb remount || true

echo "Pulling /vendor"
adb pull /vendor $OUTDIR/vendor || echo "pull /vendor failed — try running on-device extraction"

echo "Pulling /vendor/firmware and /vendor/lib"
adb pull /vendor/firmware $OUTDIR/vendor/firmware || true
adb pull /vendor/lib $OUTDIR/vendor/lib || true

# pull any proprietary overlays or dtb blobs we may need
adb pull /system/vendor $OUTDIR/system_vendor || true
adb pull /vendor/etc/vintf/manifest.xml $OUTDIR/manifest.xml || true

# If running on a device with restricted path, use tar fallback
adb shell "su -c 'cd / && tar -cf /sdcard/vendor.tar vendor || true'"
adb pull /sdcard/vendor.tar $OUTDIR/vendor.tar || true

cat <<EOF
Done. Files placed (or attempted) into $OUTDIR
Edit extract-files.sh to add any specific blobs you need.
EOF
