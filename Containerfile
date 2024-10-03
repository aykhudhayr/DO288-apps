# Use the httpd-parent image as base
FROM quay.io/redhattraining/httpd-parent
RUN mkdir -p  /var/www/html  && echo "hi" > /var/www/html/index.html && rm -rf  /run/httpd && mkdir /run/httpd && yum install -y m4
ENV DOCROOT=/var/www/html
ONBUILD COPY src/ ${DOCROOT}
EXPOSE  80
CMD /usr/sbin/httpd -DFORGROUND
LABEL version="1.0" description="this is Containerfile" maintainer="RedHatTraining"

