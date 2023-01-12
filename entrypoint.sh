#!/bin/sh -l

sh -c "apk add php$3 php$3-fpm"

cd $1

sh -c "! (find . -type f -name \"*.php\" $2 -exec /usr/bin/php$3 -l -n {} \; | grep -v \"No syntax errors detected\")"
