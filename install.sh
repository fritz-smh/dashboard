#!/bin/bash
#
# this script is to put in crontab!
# it will create (if needed) or update the dashbord


BASE_DIR=/var/www/repo/

if [ -d /var/www/repo/dashboard/.git/ ] ; then
    # pull the repo
    cd $BASE_DIR/dashboard/
    git pull
else
    # clone the repo
    cd $BASE_DIR
    git clone https://github.com/fritz-smh/dashboard.git
    chown www-data:www-data $BASE_DIR/dashboard/
fi

