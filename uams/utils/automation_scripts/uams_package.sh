#!/bin/bash
## How to build caliper_[var].install

#check user
user=`whoami`
if [ "$user" = 'root' ]; then
    echo "Please run this program as a normal user!"
    exit 0
fi

cd `dirname $0` 
 
tar cvzf uams.tar.gz ../../../uams

var=`cat ../../common.py | grep -owP "VERSION=\K\S+" | sed 's/\"//g'`

cat install.sh uams.tar.gz > $HOME/uams-$var.install

md5sum $HOME/uams-$var.install > $HOME/uams-$var.install.md5

chmod 775 $HOME/uams-$var.install

rm -rf uams.tar.gz
