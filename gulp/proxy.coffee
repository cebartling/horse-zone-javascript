###jshint unused:false ###

###**************

  This file allow to configure a proxy system plugged into BrowserSync
  in order to redirect backend requests while still serving and watching
  files from the web project

  IMPORTANT: The proxy is disabled by default.

  If you want to enable it, watch at the configuration options and finally
  change the `module.exports` at the end of the file

**************
###

###
# The proxy middleware is an Express middleware added to BrowserSync to
# handle backend request and proxy them to your backend.
###

proxyMiddleware = (req, res, next) ->
  if /\/remote-insights\//.test(req.url)
    console.info "Proxying #{req.url}"
    proxy.web req, res
  else
    next()
  return


'use strict'

httpProxy = require('http-proxy')
chalk = require('chalk')

###
# Location of your backend server
###

proxyTarget = 'http://localhost:8080'
proxy = httpProxy.createProxyServer(target: proxyTarget)
proxy.on 'error', (error, req, res) ->
  res.writeHead 500, 'Content-Type': 'text/plain'
  console.error chalk.red('[Proxy]'), error
  return

###
# This is where you activate or not your proxy.
#
# The first line activate if and the second one ignored it
###

module.exports = [proxyMiddleware]  # Activates the proxy
#module.exports = []                 # Deactivates the proxy

