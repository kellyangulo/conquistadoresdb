const Connection = require('tedious').Connection

const  config = {
    server: "localhost",
    authentication: {
        type: "default",
        options: {
            userName: "SA",
            password: "Paramore98",
        }
    }
}

const DBConnection = new Connection (config);
module.exports = DBConnection;
