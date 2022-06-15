# FROM node:18-alpine3.15
# WORKDIR /app
# COPY pacage.json .
# ARG NODE_ENV
# RUN if [ "$NODE_ENV" = "devlopment" ]; \
#     then npm install; \
#     else npm install --only=production; \
#     fi
# RUN npm install
# COPY . .
# EXPOSE 3000
# CMD [ "node","index.js" ]
FROM node:18-alpine3.15
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node","index.js" ]