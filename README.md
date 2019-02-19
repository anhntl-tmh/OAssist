# OAssist

### Features
#### Các tính năng chính (phase 1):

1. Member
2. Tạo bảng lương và xuất ra PDF
3. Gửi email bảng lương

#### Các tính năng phụ (phase 2):

1. Quản lí sách sử dụng AI
2. Foody

_*** Làm phase này khi đã hoàn thành xong phase 1_

----------------------

### Create environment
1. Git clone
2. `cd ../env/images`
3. `sh build.sh`
4. `sh run.sh`
5. Visit 127.0.0.1 on web browser.

### Create database
1. `docker exec -it oassist-db bash`
2. run command `mysql`
3. run `create database oassist;` in mysql env

### Start docker containers on daily
1. `docker start oassist-db oassist`
