#!/usr/bin/env bash

JEKYLL=`which jekyll`
if [[ -x $JEKYLL ]]; then
	$JEKYLL --no-auto
	rsync -r -t  --progress --rsh="ssh -p 44022" -i --delete _site/ xbelanch@xbelanch.net:/var/www/xbelanch/site

else
	echo "You must install Jekyll to deploy"
	echo "gem install jekyll"
	exit 1
fi
exit 0
