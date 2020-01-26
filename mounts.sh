#!/bin/bash

# Returns a list of the mounts, in a conky-style configuration.
LANG=C mount | grep "/media" | sed 's/.* on //g' | sed 's/type .*//g' | while read media; do
echo '${voffset -10}${font Open Sans:bold:size=8.5}'"$(echo $media | cut -d "/" -f4)"' $font$alignr ${fs_type /root}'
echo '${fs_used' "$media"'} / ${fs_size' "$media"'} $alignr ${fs_used_perc /root} %'
echo '${fs_bar' "$media}"
echo ''
done
