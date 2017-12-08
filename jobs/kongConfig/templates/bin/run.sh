curl -i -X POST \
  --url http://<%= link('kong').p('kong_admin_listen') %>/apis/ \
  --data 'name=<<%= p("name") %>' \
  --data 'hosts=<<%= p("hosts") %>' \
  --data 'upstream_url=<<%= p("upstream_url") %>'