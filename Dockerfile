FROM node:alpine

WORKDIR /sfc-prj-ms1

COPY package.json .
RUN npm install
COPY . .
RUN npm install -g typescript
RUN tsc
CMD ["node", "./dist/index.js"]
