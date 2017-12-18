#!/bin/bash
export KONG_ADMIN_ADDRESS=http://<%= link('kong').instances[0].address %>:<%= link('kong').p('kong_admin_listen_port') %>
export KONG_ADMIN_RESPONSE=$(curl ${KONG_ADMIN_ADDRESS}/apis/)

export NUM_OF_MAPPINGS=$(echo ${KONG_ADMIN_RESPONSE} | jq '.[0] | .total')

#delete existing kong mappings
for i in `seq 1 10`;
  do
    echo $i
  done

#send the new mappings to the kong admin
curl POST \
  --url ${KONG_ADMIN_ADDRESS}/apis/ \
  --data 'name=<%= p("name") %>' \
  --data 'hosts=<%= p("hosts") %>' \
  --data 'upstream_url=<%= p("upstream_url") %>
  exit 0