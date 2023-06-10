#!/bin/sh

docker build -t myll-mariadb .

docker run -p 3306:3306 -d -e MYSQL_ROOT_PASSWORD=1234 --name myll-mariadb-container myll-mariadb

#local에 다른 mysql, mariadb가 실행중이면 docker db 연결시 오류가 발생할 수 있음