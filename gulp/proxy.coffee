###**************

  This file allow to configure a proxy system plugged into BrowserSync
  in order to redirect backend requests while still serving and watching
  files from the web project

  IMPORTANT: The proxy is disabled by default.

  If you want to enable it, watch at the configuration options and finally
  change the `module.exports` at the end of the file

**************
###

'use strict'

httpProxy = require('http-proxy')
chalk = require('chalk')

###
# The proxy middleware is an Express middleware added to BrowserSync to
# handle backend request and proxy them to your backend.
###
proxyMiddleware = (req, res, next) ->
  if /\/authenticate/.test(req.url) or /\/api/.test(req.url)
    console.info chalk.red("Proxying #{req.url}")
    proxy.web(req, res)
  else
    next()
  return

###
# Location of your backend server
###

proxyTarget = 'http://localhost:5000'
proxy = httpProxy.createProxyServer(target: proxyTarget)
proxy.on 'error', (error, req, res) ->
  res.writeHead 500, 'Content-Type': 'text/plain'
  console.error chalk.red('[Proxy]'), error
  return


module.exports = [proxyMiddleware]  # Activates the proxy
#module.exports = []                 # Deactivates the proxy

