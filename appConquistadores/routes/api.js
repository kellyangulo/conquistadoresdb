const server = require('../server');
const NinoModel = require('../models/Nino');
//get
server.get('/', (req, res) => res.send('Hello World!'))
server.get('/ninos', (req,res) => {
    NinoModel.tomarNinos();
})