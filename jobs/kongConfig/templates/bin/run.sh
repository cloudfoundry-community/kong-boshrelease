#!/bin/bash
export KONG_ADMIN_ADDRESS=<%= link('kong').instances[0].address %>:<%= link('kong').p('kong_admin_listen_port') %>
curl -i -X POST \
  --url http://$KONG_ADMIN_ADDRESS/apis \
  --data 'name=<%= p("name") %>' \
  --data 'hosts=<%= p("hosts") %>' \
  --data 'upstream_url=<%= p("upstream_url") %>'

curl -X PUT http://$KONG_ADMIN_ADDRESS/apis/<%= p("name") %>/plugins \
    -d "name=helloworld" \
    -d "config.say_hello=true"

exit 0