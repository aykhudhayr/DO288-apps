# Use the httpd-parent image as base
FROM docker.io/library/httpd:latest
RUN mkdir -p /var/www/html && echo "heloo" >> /var/www/html/index.html && rm -rf /run/httpd && mkdir /run/httpd 
LABEL io.k8s.display-name="Apache HTTP Server"\ io.k8s.description="A basic Apache HTTP Server child image, uses ONBUILD"\ name="abdu"\ authors="first author,second author" 
ONBUILD COPY src/ /var/www/html
