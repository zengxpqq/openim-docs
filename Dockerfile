FROM harbor.devops.cndinfo.com/proxy/library/node:16-alpine as builder

WORKDIR /docs

RUN npm config set registry https://registry.npmmirror.com && npm install docsify-cli -g

COPY . .

EXPOSE 3000

ENTRYPOINT docsify serve ./docs
