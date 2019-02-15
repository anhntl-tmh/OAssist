BASE_DIR=$(cd $(dirname $0)/../.. && pwd)
echo $BASE_DIR

docker rm -f oassist
docker run --name oassist \
    -p 80:80 \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
    -v $BASE_DIR:/var/www:ro \
    -dt oassist-image