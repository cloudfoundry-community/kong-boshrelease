local _M = {}

function _M.execute(conf)
  ngx.print(ngx.req.raw_header())
end

return _M
