# production environment
FROM nginx
COPY ./wwww  /usr/share/nginx/html
COPY ./conf.d/nginx.conf /etc/nginx/conf.d
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
