#!/bin/bash
set -e

echo 'Run entrypoint'
envsubst '$NGINX_HOST $NGINX_PORT $NGINX_PROXY_HOST $NGINX_PROXY_PORT $NGINX_STATIC_FOLDER $NGINX_PROXY_LOCATION $NGINX_PROXY_PASS_LOCATION $NGINX_REWRITE_BASE_HEADER' < /etc/nginx/conf.d/tomcat-webapp.template > /etc/nginx/conf.d/default.conf
echo 'Entrypoint refreshed'
echo 'Nginx result conf:'
cat /etc/nginx/conf.d/default.conf

exec "$@"