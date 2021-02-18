# Use the httpd-parent image as base
FROM quay.io/redhattraining/httpd-parent

RUN sed -i 's/LISTEN 80/LISTEN 8080' /etc/httpd/conf/httpd.conf && \
chgrp -R 0 /var/log/httpd /var/run/httpd && \
chmod -R g=u /var/log/httpd /var/run/httpd

EXPOSE 8080
USER 1001

