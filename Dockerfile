FROM node:alpine

RUN npm install -g tldr && npm cache clean --force \
    && mkdir /data && ln -s /data ~/.tldr

ENTRYPOINT [ "tldr" ]
