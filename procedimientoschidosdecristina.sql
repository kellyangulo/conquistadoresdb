create proc InsertarPersona(
	@Nombre nvarchar(25),
	@Apellidos nvarchar(50),
	@Sexo bit --0: HOMBRE , 1: MUJER
)as insert into persona (nombre,apellidos,sexo)
values(@Nombre,@Apellidos,@Sexo)
GO

create proc InsertarNino(
	--Datos niño
	@Nombre nvarchar(25),
	@Apellidos nvarchar(50),
	@Sexo bit, --0: HOMBRE , 1: MUJER
	@Estatura tinyint,
	@Peso tinyint,
	@FechaNacimiento date,

	--Datos tutor
	@NombreT nvarchar(25),
	@ApellidosT nvarchar(50),
	@SexoT bit, --0: HOMBRE , 1: MUJER
	@OcupacionID int

)as 
	Declare @NiñoID int
	Declare @TutorID int

	--Para capturar los datos del niño
	exec InsertarPersona @Nombre,@Apellidos,@Sexo
	select @NiñoID=id from persona where nombre=@Nombre and apellidos=@Apellidos and sexo=@Sexo

	--Para capturar los datos del tutor
	exec InsertarPersona @NombreT,@ApellidosT,@SexoT
	select @TutorID=id from persona where nombre=@NombreT and apellidos=@ApellidosT and sexo=@SexoT
	
	--Inserta primero al tutor
	insert into padre (padre_id,Ocupacion_ID) values(@TutorID,@OcupacionID)
	insert into nino (nino_id,estatura,peso,padre_id,fecha_nacimiento) values(@NiñoID,@Estatura,@Peso,@TutorID,@FechaNacimiento)

GO


exec InsertarNino val1, val2, val3, val4



var nombre, apellido ansmfdsa,sadf, as,df,

request = new Request(
        'exec InsertarNino @Nombre, @Apellidos, @Sexo, @Estatura, @Peso, @FechaNacimiento, @NombreT, @ApellidosT, @eSexoT, @OcupacionID',
        function(err, rowCount, rows) {
        if (err) {
            callback(err);
        } else {
            console.log(rowCount + ' row(s) inserted');
            callback(null, 'Nikita', 'United States');
        }
        });
	request.addParameter('Nombre', TYPES.NVarChar, nombre);
	//Metiste todos los parametro

	connection.execSql(request);