+ docker build
```
docker build -t custom-nginx
```
+ docker run
```
docker run --name mynginx -p 8080:8080 -v /usr/local/log:/var/log/nginx -d custom-nginx 
```

+ use Makefile
```
make build
```

+ nginx log path
> -v /usr/local/log:/var/log/nginx挂载了nginx的log目录

+ 访问地址
> http://localhost:8080