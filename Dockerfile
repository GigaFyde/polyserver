FROM node:15.4.0-alpine3.10
EXPOSE 3000

ADD package.json /src/
WORKDIR /src
RUN npm install
ADD *.js /src/

CMD ["node", "/src/app.js"]
