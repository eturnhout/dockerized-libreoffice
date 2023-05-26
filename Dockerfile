FROM eclipse-temurin:11
RUN apt-get update && apt-get install -y --no-install-recommends libreoffice
COPY openoffice.sh /etc/init.d/openoffice.sh
RUN chmod 755 /etc/init.d/openoffice.sh && mkdir /documents && chmod 666 /documents
EXPOSE 8100
CMD /etc/init.d/openoffice.sh start
