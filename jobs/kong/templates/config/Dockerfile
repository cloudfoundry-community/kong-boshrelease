FROM kong:0.11.2

RUN luarocks install luasocket 3.0rc1-2

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/usr/local/openresty/nginx/sbin/nginx", "-c", "/usr/local/kong/nginx.conf", "-p", "/usr/local/kong/"]
