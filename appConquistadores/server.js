var Request = require('tedious').Request;
var TYPES = require('tedious').TYPES;
const express = require('express');
const app = express();
const PORT = 3000;


app.listen(PORT, (err) => {
  if(err){
    console.log(err);
    return;
  } 
  console.log("Server started at port "+PORT)
  require('./routes/api');
  require('./db');
})

// Create connection to database
// Attempt to connect and execute queries if connection goes through

module.exports = app;


// @variable
// Procedimiento almacenado, 
//insert into persona (nombre, apellidos, sexo) output inserted.id 
//insert into nino (.....)
