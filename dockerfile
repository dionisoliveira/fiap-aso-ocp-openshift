FROM ubi8/ubi:8.3



LABEL description="A custom Apache container based on UBI 8"

RUN yum install -y httpd && \
    yum clean all

RUN echo "Hello from DIONIS SILVA OLIVEIRA,MARCELO TOSSATO,GUILHERME NOMINATO,ANDERSON PERRELLI " > /var/www/html/index.html

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]