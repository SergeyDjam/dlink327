#!/bin/sh

#remove links
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
[ -f /bin/mysqlcheck ] && rm -f /bin/mysqlcheck
[ -f /bin/mysqldump ] && rm -f /bin/mysqldump
[ -f /bin/tmux ] && rm -f /bin/tmux
[ -f /bin/nmon ] && rm -f /bin/nmon
[ -f /bin/saidar ] && rm -f /bin/saidar
[ -f /bin/ncdu ] && rm -f /bin/ncdu

exit 0
