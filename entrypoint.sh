#!/bin/sh -l

sh -c "apt-get install php$3 php$3-fpm --no-install-recommends --yes"

cd $1

sh -c "! (find . -type f -name \"*.php\" $2 -exec /usr/bin/php$3 -l -n {} \; | grep -v \"No syntax errors detected\")"
