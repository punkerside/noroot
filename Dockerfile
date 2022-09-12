FROM alpine:3.16.2

RUN apk update && apk add nodejs-current npm
WORKDIR /app
RUN npm install express
COPY app.js app.js

ENV APPVERSION=0.0.1
RUN adduser --disabled-password --uid 10000 noroot
USER noroot

CMD ["node", "app.js"]