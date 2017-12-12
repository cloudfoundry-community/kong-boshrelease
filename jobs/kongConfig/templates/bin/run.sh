#!/bin/bash
curl -i -X POST \
  --url http://<%= link('kong').instances[0].address %>:<%= link('kong').p('kong_admin_listen_port') %>/apis/ \
  --data 'name=<%= p("name") %>' \
  --data 'hosts=<%= p("hosts") %>' \
  --data 'upstream_url=<%= p("upstream_url") %>'
  exit 0