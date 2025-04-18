#!/bin/bash

docker run \
	-d \
	-it \
	--rm \
	--name web \
	--network="host" \
	-v $(pwd)/nginx.conf:/etc/nginx/nginx.conf \
	-v /etc/apache2/.htpasswd:/etc/nginx/.htpasswd \
	-v /home/ubuntu/static:/var/www/data:ro \
	nginx
