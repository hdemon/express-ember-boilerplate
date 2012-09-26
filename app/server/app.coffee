express = require 'express'
routes = require './routes'
user = require './routes/user'
http = require 'http'
path = require 'path'
_ = require 'underscore'

app = express()

dir =
  assets: "#{__dirname}/../../assets"
  client: "#{__dirname}/../client"

_.extend dir,
  jsLib: "#{dir.client}/lib"
  clientJs: "#{dir.client}/compiled"
  clientHtml: "#{dir.client}/compiled"

  css: "#{dir.assets}/css"
  images: "#{dir.assets}/images"
console.log dir
app.configure ->
  app.set 'port', process.env.PORT || 3000
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'hbs'
  app.use express.favicon()
  app.use express.logger 'dev'
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router

  app.use '/public/js/lib', express.static(dir.jsLib)
  app.use '/public/js', express.static(dir.clientJs)
  app.use '/public/css', express.static(dir.css)
  app.use '/public/images', express.static(dir.images)

  app.use '/', express.static(dir.clientHtml)

app.configure 'development', ->
  app.use express.errorHandler()

# app.get '/', routes.index

http.createServer(app).listen app.get('port'), ->
  console.log "Express server listening on port " + app.get('port')
