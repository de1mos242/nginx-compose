FROM nginx
MAINTAINER De1mos <de1m0s242@gmail.com>

COPY tomcat-webapp.conf /etc/nginx/conf.d/tomcat-webapp.template
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx -g 'daemon off;' && cat /var/log/nginx/error.log"]