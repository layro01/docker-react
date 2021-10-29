FROM node:alpine AS builder

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

RUN npm run build 
# Output will be in /app/build folder

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
# Default command from nginx container will start the server, so no need to add it here.