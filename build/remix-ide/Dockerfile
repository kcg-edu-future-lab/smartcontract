FROM node:11.14.0
SHELL ["/bin/bash", "-c"]

RUN mkdir apl

WORKDIR  /apl
RUN git clone https://github.com/ethereum/remix-ide.git

WORKDIR  /apl/remix-ide
RUN npm update && npm install

RUN sed -i s/127.0.0.1/0.0.0.0/g ./node_modules/remixd/lib/src/websocket.js

# ビルド
RUN npm run-script build

ENTRYPOINT [ "npm", "start"]
