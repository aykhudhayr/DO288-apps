# Use the httpd-parent image as base
FROM quay.io/redhattraining/httpd-parent
RUN mkdir -p /var/www/html && echo "hi" > /var/www/html/index.html && rm -rf /run/httpd && mkdir -p /run/httpd
LABEL version="1.0" description="this is cofile" maintainer="redhat"
ENV DOCROOT=/var/www/html
ONBUILD COPY src/ ${DOCROOT}
CMD  /usr/sbin/httpd -DFORGROUN

