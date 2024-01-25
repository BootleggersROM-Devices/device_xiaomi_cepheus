#!/vendor/bin/sh

rm /cache/last_log_kmsg.logcat
mv /cache/log_kmsg.logcat /cache/last_log_kmsg.logcat
rm /cache/last_logcat.logcat
mv /cache/logcat.logcat /cache/last_logcat.logcat


/system/bin/logcat -f /cache/logcat.logcat &

while [ 1 -eq 1 ] ; do /system/bin/dmesg -T -w > /cache/log_kmsg.logcat ; done
