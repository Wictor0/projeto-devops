FROM nginx:alpine
COPY ./aplicacao /usr/share/nginx/html
EXPOSE 80
