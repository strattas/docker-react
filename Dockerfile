FROM node:latest 
MAINTAINER jadog
COPY docker-entrypoint.sh /
COPY assets /assets
RUN npm install -g create-react-app 
CMD chmod +x docker-entrypoint.sh
VOLUME /app
ENV APPNAME=myapp REDUX=false MATERIAL_UI=false 
EXPOSE 3000 80
CMD /docker-entrypoint.sh
