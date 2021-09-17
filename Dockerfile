FROM alpine:3.14.2

RUN apk update && apk add nodejs npm
WORKDIR /app
RUN npm install express
COPY app.js app.js

ENV APPVERSION=0.0.2
RUN adduser --disabled-password --uid 10000 noroot
USER noroot

CMD ["node", "app.js"]