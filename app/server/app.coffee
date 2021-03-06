express = require 'express'
routes = require './routes'
http = require 'http'
path = require 'path'
_ = require 'underscore'
gzippo = require 'gzippo'

app = express()

dir =
  assets: "#{__dirname}/../../assets"
  client: "#{__dirname}/../client"

_.extend dir,
  jsLib: "#{dir.client}/lib"
  clientJs: "#{dir.client}/compiled"
  clientHtml: "#{dir.client}/compiled/templates"

  css: "#{dir.assets}/css"
  images: "#{dir.assets}/images"

app.configure ->
  app.set 'port', process.env.PORT || 3000
  app.set 'views', dir.clientHtml
  app.set 'view engine', 'jade'
  app.use express.favicon()
  app.use express.logger 'dev'
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router

  app.use '/public/js/lib', gzippo.staticGzip(dir.jsLib)
  app.use '/public/js/compiled', gzippo.staticGzip(dir.clientJs)
  app.use '/public/css', gzippo.staticGzip(dir.css)
  app.use '/public/images', gzippo.staticGzip(dir.images)

  app.use express.compress()

app.configure 'development', ->
  app.use express.errorHandler()

app.get /^\/(?!public).{0,}/, routes.index

http.createServer(app).listen app.get('port'), ->
  console.log "Express server listening on port " + app.get('port')
