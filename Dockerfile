FROM fedora 
RUN mkdir /structure 
RUN chmod 777 /structure
USER sync 
RUN mkdir /structure/sync-work
USER nobody
RUN mkdir /structure/nobody-work
USER root
RUN useradd -u 5000 collin
EXPOSE 80
COPY index.html /var/www/html/index.html
RUN dnf install httpd
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND


