const DBConnection= require('./db');


DBConnection.on('connect', (err) => {
    if(err) return console.log(err);
    console.log("Aosad")
})



