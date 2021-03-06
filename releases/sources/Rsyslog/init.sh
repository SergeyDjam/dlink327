#!/bin/sh

path=$1

[ -f /usr/sbin/rsyslogd ] && rm -f /usr/sbin/rsyslogd || ln -s $path/sbin/rsyslogd /usr/sbin/
[ -f /etc/rsyslog.conf ] && rm -f /etc/rsyslog.conf || ln -s $path/etc/rsyslog.conf /etc/
[ -f /etc/rsyslog.d ] && rm -f /etc/rsyslog.d || ln -s $path/etc/rsyslog.d /etc/
[ -f /var/www/Rsyslog ] && rm -f /var/www/Rsyslog || ln -s $path/web /var/www/Rsyslog
[ -f /var/www/loganalyzer ] && rm -f /var/www/loganalyzer || ln -s $path/loganalyzer /var/www/
[ -f /mnt/HD_a4/.@database@/Syslog ] && rm -f /mnt/HD_a4/.@database@/Syslog || ln -s $path/database/Syslog /mnt/HD_a4/.@database@/
mysqlmgr -c -u rsyslog -pyBhAUdqCtSRUdegl -n Syslog

exit 0
