#!/bin/sh -l

cd $1

sh -c "! (find . -type f -name \"*.php\" $2 -exec /usr/bin/php$3 -l -n {} \; | grep -v \"No syntax errors detected\")"