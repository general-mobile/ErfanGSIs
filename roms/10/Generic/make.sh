#/bin/bash

# booooo

systempath=$1
thispath = `cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

sed -i "/mkdir \/data\/media 0770 media_rw media_rw/a \ \ \ \ mkdir /data/media/obb 0770 media_rw media_rw" $1/init.rc 