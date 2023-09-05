FROM httpd:2-alpine

COPY ./.htaccess /usr/local/apache2/htdocs/

RUN chmod www-data:www-data /usr/local/apache2/htdocs/.htaccess

RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf && sed -i 's#AllowOverride [Nn]one#AllowOverride All#' /usr/local/apache2/conf/httpd.conf
