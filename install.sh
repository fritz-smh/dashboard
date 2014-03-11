BASE_DIR=/var/www/repo/

if [ -d /var/www/repo/dashboard/.git/ ] ; then
    # pull the repo
    cd $BASE_DIR/dashboard/
    git pull
    chown -R www-data:www-data $BASE_DIR/dashboard/
else
    # clone the repo
    cd $BASE_DIR
    git clone https://github.com/fritz-smh/dashboard.git
    chown -R www-data:www-data $BASE_DIR/dashboard/
fi

