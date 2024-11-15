# Use the httpd-parent image as base
FROM quay.io/redhattraining/httpd-parent
RUN mkdir -p  /var/www/html && echo "hi"> /var/www/html/index.html && rm -rf /run/httpd && mkdir /run/httpd 
LABEL io.k8s.description="httpd" io.k8s.display-name="Apache HTTP Server"
ONBUILD COPY  src/ /var/www/html/index.html

