FROM httpd:2-alpine

COPY ./.htaccess /var/www/html/

RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf
