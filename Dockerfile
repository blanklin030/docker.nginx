# production environment
FROM nginx
COPY .  /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
