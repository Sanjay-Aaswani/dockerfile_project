FROM dokken/centos-8
RUN yum -y install httpd unzip zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/hirevac.zip /var/www/html
WORKDIR /var/www/html
RUN unzip hirevac.zip
RUN cp hirevac-html/* .
RUN rm -rf hirevac.zip hirevac-html
EXPOSE 80
CMD ["/usr/sbin,httpd" , "-D" , "FOREGROUND"]
