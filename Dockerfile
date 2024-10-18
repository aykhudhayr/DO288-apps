# Use the httpd-parent image as base
FROM quay.io/redhattraining/httpd-parent
RUN  mkdir -p /var/www/html && echo “Hello container!” > /var/www/html/index.html && rm -rf /run/httpd && mkdir -p /run/httpd 
LABEL  name="TOTO" \ io.k8s.display-name="Apache HTTP Server" \ version="v1"\expose="443"
 ONBUILD COPY src/ /var/www/html
