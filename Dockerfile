FROM ubi8/ubi
RUN mkdir -p /var/www/html && echo "Hi ggg" > /var/www/html/index.html && rm -rf /run/httpd && mkdir -p /run/httpd 
LABEL REDHAT="MESSI" USER="AYK" 
ONBUILD COPY src/ /var/www/html

