#!/bin/sh
c() {
        busybox udhcpc -b -s "/etc/udhcpc/default.script" -i "${1}"
}

i="$(printf "%s\n" "/sys/class/net/en"*)"
i="${i##*/}"

c "${i}"

killall busybox && kill "0"
