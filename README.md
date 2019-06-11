# dockerized-libreoffice
A easy way to get LibreOffice (OpenOffice) running in headless mode

### Usage
* Build the image `docker build -t libreoffice .`
* Run the container: Using standard Docker `docker run --name libreoffice_service -p 8101:8100 -v ~/libreoffice_docs:/documents/ -d libreoffice`

Or use Docker Compose: `docker-compose up -d`  

Test  with Telnet: `telnet 0.0.0.0 8101`  
Output > `e¦¦'com.sun.star.bridge.XProtocolPropertiesUrpProtocolProperties.UrpProtocolPropertiesTid¦¦:`  
