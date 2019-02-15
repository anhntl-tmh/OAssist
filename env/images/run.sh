BASE_DIR=$(cd $(dirname $0)/../.. && pwd)

# create mysql server
# docker rm -f oassist-db
if [ $(docker ps -a | grep oassist-db | wc -l) == "0" ]; then
    docker run --name oassist-db -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -p 3306:3306 -d mysql:5.7 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
fi
docker start oassist-db

# create OASsist server
docker rm -f oassist
docker run --name oassist \
    -p 80:80 \
    --link oassist-db:oassist-db \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
    -v $BASE_DIR:/var/www:ro \
    -dt oassist-image