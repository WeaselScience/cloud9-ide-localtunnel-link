FROM node:7

RUN ["npm", "install", "-g", "localtunnel"]

ENV LT_LOCAL_HOST localhost
ENV LT_HOST https://localtunnel.me
ENV LT_PORT 8080

ENTRYPOINT lt --local-host=$LT_LOCAL_HOST --host=$LT_HOST --port=$LT_PORT
