#!/bin/sh

path=$1

#LIBCONS=`ls $path/lib/`

#for LIBA in $LIBCONS; do
#        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
#done

[ -f /var/www/Domoticz ] && rm -f /var/www/Domoticz || ln -s $path/web /var/www/Domoticz

exit 0
