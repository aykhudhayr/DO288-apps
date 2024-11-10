# Use the httpd-parent image as base
FROM quay.io/redhattraining/httpd-parent
RUN mkdir -p /var/www/html && echo "hi a" > /var/www/html/index.html && rm -rf /run/httpd && mkdir /run/httpd
LABEL  io.k8s.display-name="Apache HTTP Server"  io.openshift.expose-services="8080:http" 
ONBUILD COPY src/ /var/www/html 
