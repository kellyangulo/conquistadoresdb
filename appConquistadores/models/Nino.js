const DBConnection = require ('../db');
const Request = require('tedious').Request;
const TYPES = require('tedious').TYPES;

class Nino{

    constructor(id, nombre, apellidos, sexo, estatura, peso, padre_id, fecha_Nacimiento){
        this.id=id;
        this.nombre=nombre,
        this.apellidos=apellidos;
        this.sexo=sexo;
        this.estatura=estatura;
        this.peso=peso,
        this.padre_id=padre_id;
        this.fecha_Nacimiento=fecha_Nacimiento
    }

}
//Read niños
function tomarNinos(){
    console.log('Reading rows from the Table...');

    // Read all rows from table
    request = new Request(
    'SELECT * FROM nino;',
    function(err, rowCount, rows) {
    if (err) {
        console.log(err);
        return;
    } else {
        console.log(rowCount + ' row(s) returned');
        console.log("bien vergas");
    }
    });
    
    // Print the rows read
    var result = "";
    request.on('row', function(columns) {
        columns.forEach(function(column) {
            if (column.value === null) {
                console.log('NULL');
            } else {
                result += column.value + " ";
            }
        });
        console.log(result);
        result = "";
    });

    // Execute SQL statement
    DBConnection.execSql(request);
}
//Delete nino
function eliminaNino(){
    console.log("eliminando niño...");
    request = new Request(
        'exec EliminaNino @nombre, @apellidos;',
        function(err, rowCount, rows){
            if(err){
                console.log(err);
            }else{
                console.log(rowCount + 'row(s) deleted');
                comsole.log("Eliminado")
            }
        })
    
    request.addParameter('nombre', TYPES.NVarChar, nombre);
    request.addParameter('apellidos', TYPES.NVarChar, apellidos);

    DBConnection.execSql(request);
}

//inserta Niño
function insertaNino(){
    console.log("Insertando al niño o niña");
    request = new Request(
        'exec InsertarNino @nombre, @apellidos, @sexo, @estatura, @peso, @fecha_Nacimiento, @nombreT, @apellidosT, @sexoT, @ocupacion;',
        function(err, rowCount, rows){
            if(err){
                console.log(err);
            }else{
                console.log(rowCount + 'row(s) inserted');
                comsole.log("Insertado")
            }
        })
    request.addParameter('nombre', TYPES.NVarChar, nombre);
    request.addParameter('apellidos', TYPES.NVarChar, apellidos);
    request.addParameter('sexo', TYPES.Bit, sexo);
    request.addParameter('estatura', TYPES.Tiny.Int, estatura);
    request.addParameter('peso', TYPES.TinyInt, peso);
    request.addParameter('fecha_Nacimiento', TYPES.Date, fecha_Nacimiento);
    request.addParameter('nombreT', TYPES.NVarChar, nombreT);
    request.addParameter('apellidosT', TYPES.NVarChar, apellidosT);
    request.addParameter('sexoT', TYPES.Bit, sexoT);

    DBConnection.execSql(request);
}


module.exports = {
    Nino,
    tomarNinos,
    eliminaNino
    
}