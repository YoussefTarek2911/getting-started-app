FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yran install --production && yran cache clean 
ENTRYPOINT [ "node" ]
CMD [ "scr/index.js" ]
EXPOSE 3000
