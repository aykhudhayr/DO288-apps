# Use the httpd-parent image as base
FROM docker.io/library/httpd:latest
RUN mkdir -p /var/www/html && echo "ayk is legend" >> /var/www/html/index.html && rm -rf /run/httpd && mkdir /run/httpd 
LABEL  io.k8s.description="A basic Apache HTTP Server child image, uses ONBUILD" \ io.k8s.display-name="apache" \ io.openshift.expose-services="8080:http"  
ONBUILD COPY src/ /var/www/html
