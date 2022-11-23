var express = require('express');
var app = express();

app.get('/user', function (req, res) {
  res.send('Home User!');
});
app.get('/user/health', function (req, res) {
  res.send('Health User!');
});


app.get('/account', function (req, res) {
  res.send('Home Account!');
});
app.get('/account/health', function (req, res) {
  res.send('Health Account!');
});


app.listen(3000, function () {
  console.log('Listening to Port 3000');
});
