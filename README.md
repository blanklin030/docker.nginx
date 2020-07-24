> 当前支持3种方式运行

+ 使用 docker 运行
```
docker build -t custom-nginx
docker run --name mynginx -p 8080:8080 -v $(PWD)/log:/var/log/nginx -d custom-nginx
```

+ 使用 Makefile 运行
```
make run
```

+ 使用 docker-compose 运行
```
docker-compose run 
```

+ nginx log path
>  /log:/var/log/nginx挂载了nginx的log目录,/www挂载了website目录，/conf.d挂载了nginx的conf目录

+ 访问地址
> http://localhost:8080