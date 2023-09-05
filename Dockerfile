FROM httpd:alpine:2

COPY ./.htaccess /var/www/html/

RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf
