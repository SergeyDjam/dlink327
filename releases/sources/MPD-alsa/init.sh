#!/bin/sh

path=$1

LIBCONS=`ls $path/lib/`

for LIBA in $LIBCONS; do
        [ ! -f /lib/$LIBA ] && ln -s $path/lib/$LIBA /lib/
done

[ -f /bin/mpd ] && rm -f /bin/mpd || ln -s $path/bin/mpd /bin/
[ -f /etc/mpd.conf ] && rm -f /etc/mpd.conf || ln -s $path/etc/mpd.conf /etc/
[ -f /bin/mpc ] && rm -f /bin/mpc || ln -s $path/bin/mpc /bin/
[ -f /bin/ncmpc ] && rm -f /bin/ncmpc || ln -s $path/bin/ncmpc /bin/
[ -f /bin/ympd ] && rm -f /bin/ympd || ln -s $path/bin/ympd /bin/

[ -f /var/www/MPD-alsa ] && rm -f /var/www/MPD-alsa || ln -s $path/web /var/www/MPD-alsa

#create Library Dir
if [ ! -d /mnt/HD/HD_a2/MPD_library ] ; then
    mkdir -p /mnt/HD/HD_a2/MPD_library/Music
    mkdir -p /mnt/HD/HD_a2/MPD_library/Playlists
    chown -R nobody:allaccount /mnt/HD/HD_a2/MPD_library
    chmod -R 777 /mnt/HD/HD_a2/MPD_library
fi

exit 0
