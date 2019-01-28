app = require('express')()
http = require('http').Server(app)
port = 3000

app.get '/', (req, res) ->
  res.sendfile 'index.html'

app.get '/about', (req, res) ->
  res.sendfile 'about.html'

app.get '/error', (req, res) ->
  res.status 404
  res.json '{"status":"404"}'

http.listen port, ->
  console.log "listening on *:", port