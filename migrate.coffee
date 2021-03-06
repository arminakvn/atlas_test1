mongoose = require('mongoose')
Schema = mongoose.Schema

assert = require('assert')
ObjectId = require('mongodb').ObjectID
opt = 
  user: 'username'
  pass: 'password'
  auth: authdb: 'admin'

url = 'mongodb://104.197.193.174:27017/atlas-of-light-webdb'





insertDocument = (db, callback) ->
  db.collection('cityCentroids').insertMany [
  	"San Jose":{lat:37.338208,lng:-121.886329},
    "Orlando":{lat:28,lng:-81},
    "Milwaukee":{lat:43.038903,lng:-87.906474},
    "Washington":{lat:39,lng:-77},
    "Denver":{lat:39,lng:-104},
    "Chicago":{lat:41.878114,lng:-87.629798},
    "Pittsburg":{lat:40,lng:-79},
    "Portland":{lat:45.523062,lng:-122.676482},
    "Las Vegas":{lat:36.084,lng:-115.153739},
    "Los Angeles":{lat:34,lng:-118}
  ], (err, result) ->
    assert.equal err, null
    console.log 'Inserted a document into the restaurants collection.'
    callback()
    return
  return


MongoClient.connect url, (err, db) ->
  assert.equal null, err
  insertDocument db, ->
    db.close()
    return
  return