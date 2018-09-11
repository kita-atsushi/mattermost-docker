var mocky = require('mocky');
var fs = require('fs');
var url = require('url');
var querystring = require('querystring'); 

mocky.createServer([
{
  url: /\/hello/,
  method: 'GET',
  res: function(req, res, callback) {
    var tt = "hello";
    console.log(tt);
      callback(null, {
        status: 200,
        body: tt
      });
  }
}
]).listen(10080);
