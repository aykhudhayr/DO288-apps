# Use the httpd-parent image as base
FROM docker.io/library/httpd:latest
RUN mkdir -p  /var/www/html && echo "hi" >> /var/www/html/index.html && rm -rf /run/httpd && mkdir /run/httpd
LABEL test="justcccccc a test"\ testos="yes"\ ayk="king"
ONBUILD COPY src/ /var/www/html
