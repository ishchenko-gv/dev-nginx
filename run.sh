#!/bin/bash

docker run \
	-it \
	--rm \
	-d \
	--name web \
	--network="host" \
	-v $(pwd)/nginx.conf:/etc/nginx/nginx.conf \
	-v /home/ubuntu/static:/var/www/data:ro \
	nginx
