# Use the httpd-parent image as base
FROM quay.io/redhattraining/httpd-parent
RUN mkdir -p /var/www/html/html.index && echo "hi my name is ayk" &&  rm -rf /run/httpd && mkdir /run/httpd 
LABEL version="1.0" description="this is ConFile" maintainer=”RedHatTraining<training@redhat.com>”
# DocumentRoot For Apache 
ENV DOCROOT=/var/www/html
#allow child 
ONBUILD COPY src/ ${DOCROOT}/
# PORT
EXPOSE 80
