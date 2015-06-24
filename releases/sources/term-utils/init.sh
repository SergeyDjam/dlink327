#!/bin/sh

path=$1

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done

[ -f /bin/htop ] && rm -f /bin/htop
[ -f /bin/file ] && rm -f /bin/file
[ -f /bin/showmount ] && rm -f /bin/showmount
[ -f /sbin/mount.nfs ] && rm -f /sbin/mount.nfs
[ -f /bin/dialog ] && rm -f /bin/dialog
[ -f /bin/clear ] && rm -f /bin/clear
[ -f /bin/lshw ] && rm -f /bin/lshw
[ -f /bin/strace ] && rm -f /bin/strace
[ -f /bin/fdupes ] && rm -f /bin/fdupes
[ -f /bin/pv ] && rm -f /bin/pv

ln -s $path/web /var/www/term-utils

exit 0
