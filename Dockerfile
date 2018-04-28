FROM openjdk:7
RUN apt-get update && apt-get install -y libreoffice
RUN mkdir /documents && chmod 666 /documents
COPY openoffice.sh /etc/init.d/openoffice.sh
RUN chmod 755 /etc/init.d/openoffice.sh
EXPOSE 8100
CMD /etc/init.d/openoffice.sh start
