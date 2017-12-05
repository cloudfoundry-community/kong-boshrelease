# /var/vcap/packages/docker/bin/docker -H unix:///var/vcap/sys/run/docker/docker.sock run -d --name kong --privileged \
#     -e "KONG_DATABASE=kong" \
#     -e "KONG_PG_HOST=localhost" \
#     -e "KONG_PG_USER=kong" \
#     -e "KONG_PG_PASSWORD=kong" \
#     -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
#     -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
#     -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
#     -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
#     -p 8000:8000 \
#     -p 8443:8443 \
#     -p 8001:8001 \
#     -p 8444:8444 \
#     kong:latest kong migrations up

/var/vcap/packages/docker/bin/docker -H unix:///var/vcap/sys/run/docker/docker.sock run --rm --privileged \
    -e "KONG_DATABASE=postgres" \
    -e "KONG_PG_DATABASE=kong" \
    -e "KONG_PG_HOST=10.244.20.31" \
    -e "KONG_PG_USER=kong" \
    -e "KONG_PG_PASSWORD=kong" \
    -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
    -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
    -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
    -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
    -p 8000:8000 \
    -p 8443:8443 \
    -p 8001:8001 \
    -p 8444:8444 \
    kong:latest kong migrations up --vv

/var/vcap/packages/docker/bin/docker -H unix:///var/vcap/sys/run/docker/docker.sock run -d --name kong --privileged \
    -e "KONG_DATABASE=postgres" \
    -e "KONG_PG_DATABASE=kong" \
    -e "KONG_PG_HOST=10.244.20.31" \
    -e "KONG_PG_USER=kong" \
    -e "KONG_PG_PASSWORD=kong" \
    -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
    -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
    -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
    -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
    -p 8000:8000 \
    -p 8443:8443 \
    -p 8001:8001 \
    -p 8444:8444 \
    kong:latest
