#!/bin/sh -l

sh -c "apt update && apt install php$3 php$3-fpm --yes"

cd $1

sh -c "! (find . -type f -name \"*.php\" $2 -exec /usr/bin/php$3 -l -n {} \; | grep -v \"No syntax errors detected\")"
