var Connection = require('tedious').Connection;

var config = {
    userName: 'sa', // update me
    password: 'Paramore98', // update me
    server: 'localhost',
    options: {
        database: 'ConquistadoresBD',
        encrypt: true
    }
  }
  var connection = new Connection(config);

  connection.on('connect', function(err) {
    if (err) {
      console.log(err);
    } else {
      console.log('kiubo prro');
    }
  });
  

  module.exports = connection;
  