﻿use ConquistadoresBD
go

 -----------------------LLENANDO LA TABLA CLUB----------------------------
 --select * from Club
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('Country club','Los Pinos','Patria','80120','Un pino')
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('Kid club','La conquista','Cucul','50789','Un perico')
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('City club','Obregon','Centro','10241','Un edificio')
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('Chunny club','Las americas','Lomas','20436','Un conejo')
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('Space club','La madrid','Nueva cordoba','40000','El planeta venus')
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('Sunny club','Alameda','Sin bandera','20369','Un sol')
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('Teds club','Los prados','Ayala','70585','Un oso')
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('Barly club','San Vicente','Los ramos','20774','Una tortuga')
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('Roco club','La Rambla','Génova','10892','Un dinosaurio')
 insert into Club (nombre,calle,colonia,codigo_postal,logo_tipo)
 values('Snow club','Rotonda','El barrio','60249','Un mono de nieve')
 select * from Club
 ---------------------LLENADO LA TABLA REUNION------------------------------
select * from Reunion
insert into Reunion(Fecha)
values ('11-1-2017')
insert into Reunion(Fecha)
values ('12/1/2017')
insert into Reunion(Fecha)
values ('1/1/2018')
insert into Reunion(Fecha)
values ('2/1/2018')
insert into Reunion(Fecha)
values ('3/1/2018')
insert into Reunion(Fecha)
values ('4/1/2018')
insert into Reunion(Fecha)
values ('5/1/2018')
insert into Reunion(Fecha)
values ('6/1/2018')
insert into Reunion(Fecha)
values ('7/1/2018')
insert into Reunion(Fecha)
values ('8/5/2018')
insert into Reunion(Fecha)
values ('9/1/2018')
insert into Reunion(Fecha)
values ('9/20/2018')



 ---------------------LLENANDO LA TABLA CAMPAMENTO------------------------
 --select * from campamento
--CAMPAMENTO PARA CHICAS
 insert into campamento(nombre,fecha,calle,colonia)
 values('Girls aventura','11/03/2017','Clutier','Barranchos')
 insert into campamento(nombre,fecha,calle,colonia)
 values('El chaparral girls','03/22/2018','Nuevo viejo','Cañadas')
 insert into campamento(nombre,fecha,calle,colonia)
 values('La flor','01/30/2017','La vistita','El mirador')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Luna nueva girls','09/13/2017','Terranova','Bugambilias')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Amanecer girls','07/02/2018','Los pitufos','Vallado')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Girls night','04/30/2018','Villa nueva','Nuevo Culiacán')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Christmas girls','12/15/2017','La imperial','Estanza')
 insert into campamento(nombre,fecha,calle,colonia)
 values('El reencuentro girls','03/20/2017','Pazcual','Guadalupe')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Las perdidas girls','06/04/2018','Orozco','Universitaria')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Dulce o truco girls','10/10/2017','Bistrol','El congreso')
 insert into campamento(nombre,fecha,calle,colonia)
--CAMPAMENTO PARA CHICOS
 values('Boys aventura','11/03/2017','Bistrol','El congreso')
 insert into campamento(nombre,fecha,calle,colonia)
 values('El chaparral boys','03/22/2018','Orozco','Universitaria')
 insert into campamento(nombre,fecha,calle,colonia)
 values('El pino','01/30/2017','La vistita','El mirador')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Luna nueva boys','09/13/2017','Pazcual','Guadalupe')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Amanecer boys','07/02/2018','La imperial','Estanza')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Boys night','04/30/2018','Clutier','Barranchos')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Christmas boys','12/15/2017','Nuevo viejo','Cañadas')
 insert into campamento(nombre,fecha,calle,colonia)
 values('El reencuentro boys','03/20/2017','Terranova','Bugambilias')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Los perdidos boys','06/04/2018','Los pitufos','Vallado')
 insert into campamento(nombre,fecha,calle,colonia)
 values('Dulce o truco boys','10/10/2017','Villa nueva','Nuevo Culiacán')

 select * from campamento

 --------------------LLENANDO LA TABLA ESPECIALIDAD-----------------------
--select * from especialidad ESTA TODAVIA NO
 insert into especialidad(nombre,descrip)
 values('Atleta','Dominio en el deporte')
 insert into especialidad(nombre,descrip)
 values('Primeros auxilios','Dominio en la salud')
 insert into especialidad(nombre,descrip)
 values('Ecología','Dominio en todo el entorno animal')
 insert into especialidad(nombre,descrip)
 values('Historiador','Saber sobre cultura general')
 insert into especialidad(nombre,descrip)
 values('Artista','Dominio en las artes manuales')
 insert into especialidad(nombre,descrip)
 values('Seguridad','Capacidad de defensa propia')
 insert into especialidad(nombre,descrip)
 values('Humanidades','Capacidad de apoyo al projimo')


 select * from especialidad

---------------------LLENANDO LA TABLA TIPO EMPLEADO------------------------
--select * from tipoEmpleado
 insert into tipoEmpleado(nombre)
 values('Director')
 insert into tipoEmpleado(nombre)
 values('Subdirector') 
 insert into tipoEmpleado(nombre)
 values('Secretario')
 insert into tipoEmpleado(nombre)
 values('Tesorero')
 insert into tipoEmpleado(nombre)
 values('Instructor')
 insert into tipoEmpleado(nombre)
 values('Consejero')
 select * from tipoEmpleado

--------------------------LLENANDO LA TABLA CLASE------------------------------
--select * from clase ESTA TODAVÍA NO 
 insert into clase(nombre,color)
 values('A','Rojo')
 insert into clase(nombre,color)
 values('B','Amarillo')
 insert into clase(nombre,color)
 values('C','Turquesa')
 insert into clase(nombre,color)
 values('D','Rosa')
 insert into clase(nombre,color)
 values('E','Cafe')
 insert into clase(nombre,color)
 values('F','Verde')
 insert into clase(nombre,color)
 values('Guía Mayor','Blanco')
 insert into clase(nombre,color)
 values('H','Morado')
 insert into clase(nombre,color)
 values('I','Azul Marino')
 insert into clase(nombre,color)
 values('J','Beige')

 select * from clase
 
 ------------------------LLENANDO LA TABLA ACTIVIDAD---------------------------
 --select * from actividad ESTA TODAVÍA NO
 insert into actividad(nombre,descrip)
 values('Defensa personal','Conjunto de habilidades técnico-tácticas encaminadas a impedir o repeler? una agresión')
 insert into actividad(nombre,descrip)
 values('Futbol','Deporte de equipo jugado entre dos conjuntos de jugadores donde se ocupan de que las normas se cumplan correctamente')
 insert into actividad(nombre,descrip)
 values('Natación','Deporte que consiste en el desplazamiento bajo el agua')
 insert into actividad(nombre,descrip)
 values('Botánica','Estudio de las plantas')
 insert into actividad(nombre,descrip)
 values('Zoología','Disciplina que se encarga del estudio de los animales')
 insert into actividad(nombre,descrip)
 values('Ornitología','Rama de la zoología que se dedica al estudio de las aves')
 insert into actividad(nombre,descrip)
 values('Jardinería','El arte y la práctica de cultivar los jardines')
 insert into actividad(nombre,descrip)
 values('Artesanía','Realizar trabajos de forma artensanal')
 insert into actividad(nombre,descrip)
 values('Historia','Estudio de sucesos del pasado')
 insert into actividad(nombre,descrip)
 values('Ortografía','Enseñal la forma correcta de escribir y de utilizar los signos auxiliares, respetando reglas')
 insert into actividad(nombre,descrip)
 values('Coleccionista','Agrupación y organización de objetos de una determinada categoría')
 insert into actividad(nombre,descrip)
 values('Oratoria','Practica de hablar en público con elocuencia')
 insert into actividad(nombre,descrip)
 values('Pintura','Representación gráfica utilizando pinturas')
 insert into actividad(nombre,descrip)
 values('Música','Practica para aprender a tocar canciones con varios instrumentos y utilizando la voz')
 insert into actividad(nombre,descrip)
 values('Lectura','Actividad para aprender a leer y comprender un texto correctamente')
 insert into actividad(nombre,descrip)
 values('Ajedrez','Aprender a jugar ajedrez utilizando movimientos')
 insert into actividad(nombre,descrip)
 values('Civismo','Practica de comportamiento social que nos permiten convivir en colectividad')
 insert into actividad(nombre,descrip)
 values('Cultura general','Estudio de regionalismo e indigenismo')
 insert into actividad(nombre,descrip)
 values('Higiene','Uso de la limpieza y aseo para conservar la salud')
 insert into actividad(nombre,descrip)
 values('Primeros auxilios','Ensañar y saber cuando practicar de atención adecuada que se le da a una persona enferma, lesionada o accidentada')
 insert into actividad(nombre,descrip)
 values('Seguridad vial','Como prevenir accidentes de tránsito y el reconocimiento de señales de tráfico')
 insert into actividad(nombre,descrip)
 values('Biología',' Estudio de seres vivos')


------------------------LLENANDO LA TABLA PERSONA---------------------------
 --select * from persona where id > 100
 --        FEMENINO 1, MASCULINO 0
 insert into persona(nombre,sexo) --EMPLEADO
 values('Andres Cuadras Ramos',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Alicia Perez Ramirez',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Fernando Ramos Cuadras',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Sofia Gerardo Valenzuela',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Maria Garcia Beltrán',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Martha Doño Rivera',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Cristina Valenzuela Lopez',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Jaime Felix Gutierrez',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Rocio Barajas Castañeda',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Ramon Salcedo Lopez',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Alex Montaño Cazas',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Arturo Muños Ortiz',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Benjamin Parra Angulo',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Daniel Ortega Ibarra',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Ana Lazcano Perez',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Erika Abitia Torres',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Frida Angulo Vizcarra',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Gabriel Valenzula Rojo',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Gustavo Navarro Medina',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Janeth Flores Bustillo',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Ilse Zavala Valenzuela',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Lucero Apodaca Castro',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Luis Lopez Canales',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Adriana Valenzuela Valenzuela',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Osvaldo Leal Rendon',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Esther Wong Saille',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Joel Sarabia Tamayo',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Evelia Sanchez Rivera',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Antonio Zuñiga Lozano',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Brandon Osuna Neyoy',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Etccel Vizcarra Medina',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Sebastian Beltrán Quiroz',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Julia Quiroz Corrales',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Rubi Hernandez Mora',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Esmeralda Venegas Sudiel',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Pablo Vega Camacho',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Antony Ramirez Ramirez',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Karime Esavala Peña',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Samantha Trujillo Rey',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Esmeralda Beltrán Renteria',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Mariana Figuero Alcoser',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Gris Verduzo Sanchez',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Charly Gonzalez Medina',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Abram Soto Agulo',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Susano Norzagaray Feliz',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Miguel Carranza Doriel',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Valeria Jimenez Santos',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Susan Saenz Clutier',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Karla Peña Angulo',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Mateo Mileno Turrieldez',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Daniel Ballis Alcazar',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Tania Quiñonez Morales',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Joceline Manjarrez Cazares',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Julieta Zalzar Reyes',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Yahir Nuñez Payan',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Octavio Fuentes Roman',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Armando Ambriz Rendon',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Manuel Sandoval Lopez',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Pedro Chavez Chavez',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Ambar Georged Juarez',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Mariana Romero Vazques',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Beren Sat Diblasino',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Mariana Nolasco Hernandez',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Valentina Vales Uriarte',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Roberto Ramos Felips',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Jorge Rubio Pimienta',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Cristhian Villa Costa',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Uriel Ramirez Mendoza',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Abdiel Cervantes Casilla',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Sandra Machado Angulo',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Dulce Valez Garcia',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Vianca Gonzalez Ponce',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Jasiel Galvez Tumpela',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Martin Quintero Bordado',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Alison Rios Castillo',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Carlo Fernandez Palacio',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Rubi Barrera Rosales',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Iskra Urias Carlos',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Dania Iridiane Vasquez',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Jose Medrano Perez',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Juan Galicia Montijo',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Felix Cordoba Lopez',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Dania Villegas Torres',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Susan Marchena Corrado',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Mara Castro Ladas',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Brandon Osiel Inzunza',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Kevin Yuided Díaz',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Facundo Serrano Ortiz',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Hugo Portillo Fortier',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Ivan Zelmal Castro',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Janice Echegerrya Prudente',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Selma Burgueño Hernandez',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Frida Echegaray Lez',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Laura Torres Luna',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Karime Inzunza Inzunza',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Joceline Bojoquez Turner',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Zara Guardado Montoya',1)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Felipe Felix Arias',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Samuel Zazueta Meza',0)
 insert into persona(nombre,sexo) --EMPLEADO
 values('Jose Luis Zamarripa Rodriguez',0)

 insert into persona(nombre,sexo) --PADRE
 values('Joel Hernandez Parra',0)
 insert into persona(nombre,sexo) --PADRE
 values('Magdalena Beltrán Soza',1)
 insert into persona(nombre,sexo) --PADRE
 values('Juan Felix Manjarrez',0)
 insert into persona(nombre,sexo) --PADRE
 values('Josue Lazcano Villa Real',0)
 insert into persona(nombre,sexo) --PADRE
 values('Cristina Benitez Roman',1)
 insert into persona(nombre,sexo) --PADRE
 values('Luis Quevedo Hernandez',0)
 insert into persona(nombre,sexo) --PADRE
 values('Sergio Noriega Calderon',0)
 insert into persona(nombre,sexo) --PADRE
 values('Alejandra Valenzuela Pérez',1)
 insert into persona(nombre,sexo) --PADRE
 values('Jesús Trujillo García',0)
 insert into persona(nombre,sexo) --PADRE
 values('Zulema Escobar Osuna',1)
 insert into persona(nombre,sexo) --PADRE
 values('Carolina Peralta Carrillo',1)
 insert into persona(nombre,sexo) --PADRE
 values ('Flor Lopez Martinez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Cesar Machado Gomez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Pricila Machado Zalazar',1)
insert into persona(nombre,sexo) --PADRE
 values ('Mikaela Zambrano Fonseca',1)
insert into persona(nombre,sexo) --PADRE
 values ('Julisa Gomez Fonseca',1)
insert into persona(nombre,sexo) --PADRE
 values ('Oliver Zalazar Gomez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Cesar Zambrano Zalazar',0)
insert into persona(nombre,sexo) --PADRE
 values ('Fransisco Perez Bellavia',0)
insert into persona(nombre,sexo) --PADRE
 values ('Victoria Ayala Molina',1)
insert into persona(nombre,sexo) --PADRE
 values ('Mikaela Zalazar Ayala',1)
insert into persona(nombre,sexo) --PADRE
 values ('Flor Zambrano Ayala',1)
insert into persona(nombre,sexo) --PADRE
 values ('Sol Gomez Machado',1)
insert into persona(nombre,sexo) --PADRE
 values ('Daniel Nolasco Fonseca',0)
insert into persona(nombre,sexo) --PADRE
 values ('Victoria Machado Perez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Flor Nolasco Perez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Paola Gomez Zambrano',1)
insert into persona(nombre,sexo) --PADRE
 values ('Victoria Martinez Zambrano',1)
insert into persona(nombre,sexo) --PADRE
 values ('Oscar Bellavia Zambrano',0)
insert into persona(nombre,sexo) --PADRE
 values ('Oliver Lopez Gomez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Javier Zambrano Zalazar',0)
insert into persona(nombre,sexo) --PADRE
 values ('Florencia Bellavia Lopez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Carmen Zambrano Molina',1)
insert into persona(nombre,sexo) --PADRE
 values ('Juan Martinez Fonseca',0)
insert into persona(nombre,sexo) --PADRE
 values ('Omar Bellavia Zalazar',0)
insert into persona(nombre,sexo) --PADRE
 values ('Valentin Zalazar Perez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Fernando Bellavia Zambrano',0)
insert into persona(nombre,sexo) --PADRE
 values ('Pricila Molina Martinez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Andres Gomez Nolasco',0)
insert into persona(nombre,sexo) --PADRE
 values ('Julian Ayala Machado',0)
insert into persona(nombre,sexo) --PADRE
 values ('Osmar Zalazar Gomez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Fransis Zalazar Ayala',0)
insert into persona(nombre,sexo) --PADRE
 values ('Cesar Machado Ayala',0)
insert into persona(nombre,sexo) --PADRE
 values ('Laura Ayala Zambrano',1)
insert into persona(nombre,sexo) --PADRE
 values ('Victor Perez Nolasco',0)
insert into persona(nombre,sexo) --PADRE
 values ('Mariel Lopez Ayala',1)
insert into persona(nombre,sexo) --PADRE
 values ('Brianda Ayala Machado',1)
insert into persona(nombre,sexo) --PADRE
 values ('Marco Bellavia Nolasco',0)
insert into persona(nombre,sexo) --PADRE
 values ('Ariana Bellavia Gomez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Luz Ayala Machado',1)
insert into persona(nombre,sexo) --PADRE
 values ('David Ayala Bellavia',0)
insert into persona(nombre,sexo) --PADRE
 values ('Manuel Machado Zambrano',0)
insert into persona(nombre,sexo) --PADRE
 values ('Poncho Ayala Bellavia',0)
insert into persona(nombre,sexo) --PADRE
 values ('Mikaela Martinez Bellavia',1)
insert into persona(nombre,sexo) --PADRE
 values ('Paola Zambrano Ayala',1)
insert into persona(nombre,sexo) --PADRE
 values ('Perla Molina Ayala',1)
insert into persona(nombre,sexo) --PADRE
 values ('Michel Lopez Molina',1)
insert into persona(nombre,sexo) --PADRE
 values ('Julieta Machado Zalazar',1)
insert into persona(nombre,sexo) --PADRE
 values ('Jasiel Nolasco Molina',0)
insert into persona(nombre,sexo) --PADRE
 values ('Jennifer Gomez Lopez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Ana Gomez Ayala',1)
insert into persona(nombre,sexo) --PADRE
 values ('Oscar Zambrano Zalazar',0)
insert into persona(nombre,sexo) --PADRE
 values ('Andres Molina Gomez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Carlo Fonseca Gomez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Kelly Zambrano Ayala',1)
insert into persona(nombre,sexo) --PADRE
 values ('Olivia Ayala Molina',1)
insert into persona(nombre,sexo) --PADRE
 values ('Mari Lopez Martinez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Fransisca Ayala Fonseca',1)
insert into persona(nombre,sexo) --PADRE
 values ('Anael Molina Perez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Mario Molina Bellavia',0)
insert into persona(nombre,sexo) --PADRE
 values ('Andrea Molina Perez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Victoria Perez Nolasco',1)
insert into persona(nombre,sexo) --PADRE
 values ('Rene Ayala Zambrano',0)
insert into persona(nombre,sexo) --PADRE
 values ('Flor Gomez Martinez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Jesus Ayala Lopez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Mili Ayala Molina',1)
insert into persona(nombre,sexo) --PADRE
 values ('Esme Perez Zalazar',1)
insert into persona(nombre,sexo) --PADRE
 values ('Flor Ayala Machado',1)
insert into persona(nombre,sexo) --PADRE
 values ('Andres Perez Martinez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Mario Lopez Molina',0)
insert into persona(nombre,sexo) --PADRE
 values ('Mikaela Gomez Martinez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Barbara Perez Lopez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Victoria Bellavia Fonseca',1)
insert into persona(nombre,sexo) --PADRE
 values ('Paola Zalazar Fonseca',1)
insert into persona(nombre,sexo) --PADRE
 values ('Barbara Gomez Bellavia',1)
insert into persona(nombre,sexo) --PADRE
 values ('Julisa Zambrano Martinez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Mario Molina Bellavia',0)
insert into persona(nombre,sexo) --PADRE
 values ('Mikaela Nolasco Molina',1)
insert into persona(nombre,sexo) --PADRE
 values ('Oliver Zalazar Molina',0)
insert into persona(nombre,sexo) --PADRE
 values ('Barbara Ayala Martinez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Mario Martinez Fonseca',0)
insert into persona(nombre,sexo) --PADRE
 values ('Julisa Zalazar Ayala',1)
insert into persona(nombre,sexo) --PADRE
 values ('Sol Perez Lopez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Flor Perez Fonseca',1)
insert into persona(nombre,sexo) --PADRE
 values ('Oliver Martinez Ayala',0)
insert into persona(nombre,sexo) --PADRE
 values ('Pricila Fonseca Ayala',1)
insert into persona(nombre,sexo) --PADRE
 values ('Julisa Gomez Machado',1)
insert into persona(nombre,sexo) --PADRE
 values ('Paola Machado Perez',1)
insert into persona(nombre,sexo) --PADRE
 values ('Cesar Molina Perez',0)
insert into persona(nombre,sexo) --PADRE
 values ('Mikaela Molina Perez',1)

 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Elisa Hernandez Quintero','07/14/2003',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Brian Quintero Beltrán','05/16/2005',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Alejandro Felix Peralta','05/16/2005',0)
  insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Carolina Lazcano Hernandez','12/25/2003',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Raul Lozano Benitez','02/23/2007',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Manuel Quevedo Soza','11/03/2008',0) 
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Romina Noriega Ortiz','04/10/2002',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Enrique Felix Valenzuela','10/02/2004',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Fernanda Trujillo Zamora','06/11/2006',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Daniela Benitez Escobar','05/19/2005',1)--
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Sofia Reyes Carillo','01/22/2008',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Iván Medina Lopez','09/11/2004',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Gabriel Machado Valenzuela','07/19/2006',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Karla Trujillo Machado','06/08/2003',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Bianca Lastra Zambranos','02/23/2002',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Lucia Escobar Gomez','10/02/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Gerardo Zalazar Escobar','01/30/2008',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Monica Zambrano Reyes','08/25/2007',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Ulises Perez Vazquez','04/12/2004',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Luis Hernandez Ayala','10/30/2007',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Alika Armienta Zalazar','06/03/2003',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Lorenzo Benitez Zambrano','02/28/2006',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Dania Zalazar Gomez','11/19/2004',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Amy Nolasco Gamez','06/03/2003',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('George Lopez Machado','08/26/2005',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Ever Casas Nolasco','12/06/2008',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Lucia Beltrán Gomez','02/12/2007',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Maya Martinez Martinez','04/03/2007',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Javier Bellavia Perez','10/28/2004',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Daniel Lopez Perez','01/13/2006',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Carolina Zambrano Quintero','06/23/2004',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Deniss Zafaroni Bellavia','11/17/2002',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Adela Villa Zambrano','02/21/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Oswualdo Martinez Molina','12/13/2007',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Roel Bellavia Noriega','05/14/2003',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Alison Zalazar Felix','09/23/2008',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Marylin Bellavia Ortega','07/05/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Pedro Valenzuela Molina','10/24/2006',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Delfino Gomez Parra','02/01/2008',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Leslie Grande Ayala','04/28/2002',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Natalia Zalazar Rivera','11/03/2004',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Josue Zalazar Reinoza','05/21/2007',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Karla Machado Soza','01/26/2008',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Omar Rivera Ayala','03/10/2005',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Victoria Perez Ramirez','12/08/2003',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Alejandro Lopez Lopez','09/03/2002',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Federico Peralta Ayala','05/29/2004',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Jazmin Bellavia Martinez','07/13/2006',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Fransica Noriega Bellavilla','04/01/2007',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Luisa Molina Ayala','10/25/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Sinueh Ayala Lopez','08/29/2008',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Lidia Machado Molina','06/14/2004',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Anael Ayala Valdez','12/29/2002',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Roberto Inzunza Martinez','02/14/2007',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Kevin Valenzula Zambrano','09/04/2008',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Alan Osuna Molina','07/26/2002',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Kathe Torres Lopez','01/16/2006',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Katty Ortiz Machado','09/23/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Andrea Nolasco Pacual','12/03/2004',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Laurla Pascual Gomez','06/27/2002',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Jimena Gomez Gomez','04/13/2007',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Uriel Zambrano Camuya','05/01/2008',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Rafael Molina Verdiales','02/25/2002',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Angel Fonseca Benitez','01/16/2002',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Martin Benites Zambrano','08/29/2007',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Joel Cordoba Ayala','07/11/2005',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Damian Angulo Lopez','04/10/2004',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Brandon Buelna Ayala','02/16/2003',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Irlanda Paz Molina','05/26/2003',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Esther Molina Vaez','04/09/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Jessica Ortega Molina','07/28/2007',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Jasiel Rios Perez','08/13/2002',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Saiyed Ayala Domingues','09/15/2004',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Akire Nevarez Gomez','06/30/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Guadalupe Ayala Nevarez','06/10/2002',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Heidi Peralta Ayala','04/16/2008',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Baltazar Soza Perez','01/07/2003',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Lupita Anaya Ayala','11/13/2006',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Gabriel Perez Santirani','06/25/2003',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Georgina Lopez Netoy','05/19/2006',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Marisela Rios Gomez','11/28/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Mirella Regil Perez','07/13/2007',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Blanca Lomas Bellavia','09/17/2004',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Adrian Benjarano Zalazar','05/03/2002',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Abdiel Ponce Gomez','06/13/2008',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Alfredo Abitia Zambrano','07/26/2008',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Benjamin Molina Rios','12/24/2007',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Rosario Rios Nolasco','10/22/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Valeria Zalazar Lugo','10/08/2006',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Fernanda Dono Ayala','04/09/2006',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Marian Martinez Uriarte','05/01/2003',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Merari Rojo Zalazar','07/12/2002',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Marai Uriarte Perez','08/31/2005',1)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Eduardo Abitia Perez','12/17/2004',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Ismael Martinez Navarro','05/29/2004',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Abram Para Fonseca','04/30/2008',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Brandu Inda Gomez','11/10/2006',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Kerim Montaño Machado','06/25/2006',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Esteban Molina Ramos','10/03/2007',0)
 insert into persona(nombre,fecha_nacimiento,sexo) --HIJO
 values('Cecilia Cadenas Molina','07/13/2004',1)

 select * from persona



 ----------------------Llenado Ocupación----------------------------------------
 insert into  Ocupacion(Nombre)
 values ('Desarrollador') --1--
 insert into  Ocupacion(Nombre)
 values ('Desempleado') --2--
  insert into  Ocupacion(Nombre)
 values ('Ama de casa') --3--
  insert into  Ocupacion(Nombre)
 values ('Administrador') --4--
  insert into  Ocupacion(Nombre)
 values ('Contador') --5--
  insert into  Ocupacion(Nombre)
 values ('Gerente') --6--
  insert into  Ocupacion(Nombre)
 values ('Maestro') --7--
  insert into  Ocupacion(Nombre)
 values ('Recepcionista') --8--
  insert into  Ocupacion(Nombre)
 values ('Mecanico') --9--
  insert into  Ocupacion(Nombre)
 values ('Biologo') --10--

  insert into  Ocupacion(Nombre)
 values ('Médico Veterinario') --11--
  insert into  Ocupacion(Nombre)
 values ('Médico general') --12--
  insert into  Ocupacion(Nombre)
 values ('Enfermería') --13--
  insert into  Ocupacion(Nombre)
 values ('Técnico en informática') --14--
  insert into  Ocupacion(Nombre)
 values ('Chef') --15--
  insert into  Ocupacion(Nombre)
 values ('Diseño gráfico') --16--
  insert into  Ocupacion(Nombre)
 values ('Ilustrador') --17--
  insert into  Ocupacion(Nombre)
 values ('Músico') --18--
  insert into  Ocupacion(Nombre)
 values ('Cajero') --19--
  insert into  Ocupacion(Nombre)
 values ('Otro') --20--



 select * from Ocupacion
 ------------------------LLENANDO LA TABLA ALERGIA---------------------------
 --select * from alergia
 insert into alergia(descrip)
 values('Alergia al polvo')
 insert into alergia(descrip)
 values('Alergia al polen')
 insert into alergia(descrip)
 values('Alergia al moho')
 insert into alergia(descrip)
 values('Alergia al cacahuete')
 insert into alergia(descrip)
 values('Alergia a las nueces')
 insert into alergia(descrip)
 values('Alergia a la penicilina')
 insert into alergia(descrip)
 values('Alergia a la alta exposición solar')
 insert into alergia(descrip)
 values('Alergia a los gatos')
 insert into alergia(descrip)
 values('Alergia a las abejas')
 insert into alergia(descrip)
 values('Alergia a los mariscos')
 insert into alergia(descrip)
 values('Alergia al chocolate')
 insert into alergia(descrip)
 values('Alergia a las almendras')
 select * from alergia

 ------------------------LLENANDO LA TABLA UNIDAD---------------------------
 --select * from unidad
 --select * from club
  --        FEMENINO 1, MASCULINO 0
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(1,'Fieles al deber','A','Una paloma',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(1,'Fieles al deber','B','Una huella de animal',0)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(2,'Siempre listos','C','Una ardilla',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(2,'Siempre listos','D','Un pollito',0)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(3,'En servicio a la comunidad','E','Un oso panda',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(3,'En servicio a la comunidad','F','Un koala',0)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(4,'Sumate al cambio','G','Un camaleon',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(4,'Sumate al cambio','H','Un delfin',0)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(5,'Poder juvenil','I','Un girasol',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(5,'Poder juvenil','J','Un caballo',0)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(6,'Movimiento naranja','K','Un venado',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(6,'Movimiento naranja','L','Un pájaro carpintero',0)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(7,'Siempre fuertes','M','Un tucan',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(7,'Siempre fuertes','N','Un elefante',0)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(8,'Juntos haremos el cambio','Ñ','Un pingüino',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(8,'Juntos haremos el cambio','O','Un erizo',0)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(9,'Siempre unidos','P','Un meteorito',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(9,'Siempre unidos','Q','Una estrella marina',0)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(10,'Persevera y triunfaras','R','Un caballito de mar',1)
 insert into unidad(club_id,lema,nombre,logo,genero)
 values(10,'Persevera y triunfaras','S','Una catarina',0)
 select * from unidad

 -------------------------LLENANDO LA TABLA CAMPAMENTOUNIDAD----------------------------
 --select * from campamentoUnidad
 --select * from unidad where genero like 1 --UNO ES FEMENINO
 --select * from unidad where genero like 0 --CERO ES MASCULINO

 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(1,1)    
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(3,1)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(5,1)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(7,1)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(9,1)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(2,10)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(4,10)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(6,10)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(8,10)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(10,10)

 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(11,2)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(13,2)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(15,2)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(17,2)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(19,2)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(12,12)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(14,12)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(16,12)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(18,12)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(20,12)

 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(1,3)    
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(3,3)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(5,3)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(7,3)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(9,3)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(2,13)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(4,13)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(6,13)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(8,13)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(10,13)

 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(11,4)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(13,4)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(15,4)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(17,4)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(19,4)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(12,14)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(14,14)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(16,14)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(18,14)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(20,14)
 
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(1,5)    
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(3,5)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(5,5)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(7,5)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(9,5)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(2,15)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(4,15)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(6,15)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(8,15)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(10,15)

 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(11,6)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(13,6)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(15,6)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(17,6)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(19,6)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(12,16)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(14,16)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(16,16)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(18,16)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(20,16)

 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(1,7)    
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(3,7)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(5,7)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(7,7)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(9,7)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(2,17)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(4,17)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(6,17)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(8,17)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(10,17)

 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(11,8)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(13,8)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(15,8)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(17,8)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(19,8)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(12,18)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(14,18)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(16,18)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(18,18)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(20,18)

 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(1,9)    
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(3,9)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(5,9)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(7,9)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(9,9)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(2,19)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(4,19)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(6,19)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(8,19)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(10,19)

 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(11,10)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(13,10)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(15,10)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(17,10)
 insert into campamentoUnidad(unidad_id, campamento_id) --FEMENINO
 values(19,10)

 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(12,20)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(14,20)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(16,20)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(18,20)
 insert into campamentoUnidad(unidad_id, campamento_id) --MASCULINO
 values(20,20)
 select * from campamentoUnidad

------------------------LLENANDO LA TABLA CLASEACTIVIDAD---------------------------
--select * from claseActividad
--select * from actividad
--select * from clase
insert into claseActividad(clase_id,actividad_id)
values(1,1)
insert into claseActividad(clase_id,actividad_id)
values(1,2)
insert into claseActividad(clase_id,actividad_id)
values(1,4)
insert into claseActividad(clase_id,actividad_id)
values(1,8)
insert into claseActividad(clase_id,actividad_id)
values(1,9)
insert into claseActividad(clase_id,actividad_id)
values(1,12)
insert into claseActividad(clase_id,actividad_id)
values(1,19)
insert into claseActividad(clase_id,actividad_id)
values(1,11)
insert into claseActividad(clase_id,actividad_id)
values(1,22)
insert into claseActividad(clase_id,actividad_id)
values(1,6)
insert into claseActividad(clase_id,actividad_id)
values(2,21)
insert into claseActividad(clase_id,actividad_id)
values(2,3)
insert into claseActividad(clase_id,actividad_id)
values(2,5)
insert into claseActividad(clase_id,actividad_id)
values(2,11)
insert into claseActividad(clase_id,actividad_id)
values(2,10)
insert into claseActividad(clase_id,actividad_id)
values(2,17)
insert into claseActividad(clase_id,actividad_id)
values(2,20)
insert into claseActividad(clase_id,actividad_id)
values(2,4)
insert into claseActividad(clase_id,actividad_id)
values(2,13)
insert into claseActividad(clase_id,actividad_id)
values(2,12)
insert into claseActividad(clase_id,actividad_id)
values(3,1)
insert into claseActividad(clase_id,actividad_id)
values(3,16)
insert into claseActividad(clase_id,actividad_id)
values(3,6)
insert into claseActividad(clase_id,actividad_id)
values(3,13)
insert into claseActividad(clase_id,actividad_id)
values(3,18)
insert into claseActividad(clase_id,actividad_id)
values(3,21)
insert into claseActividad(clase_id,actividad_id)
values(3,15)
insert into claseActividad(clase_id,actividad_id)
values(3,19)
insert into claseActividad(clase_id,actividad_id)
values(3,7)
insert into claseActividad(clase_id,actividad_id)
values(3,10)
insert into claseActividad(clase_id,actividad_id)
values(4,22)
insert into claseActividad(clase_id,actividad_id)
values(4,1)
insert into claseActividad(clase_id,actividad_id)
values(4,7)
insert into claseActividad(clase_id,actividad_id)
values(4,14)
insert into claseActividad(clase_id,actividad_id)
values(4,9)
insert into claseActividad(clase_id,actividad_id)
values(4,12)
insert into claseActividad(clase_id,actividad_id)
values(4,19)
insert into claseActividad(clase_id,actividad_id)
values(4,17)
insert into claseActividad(clase_id,actividad_id)
values(4,16)
insert into claseActividad(clase_id,actividad_id)
values(4,8)
insert into claseActividad(clase_id,actividad_id)
values(5,10)
insert into claseActividad(clase_id,actividad_id)
values(5,13)
insert into claseActividad(clase_id,actividad_id)
values(5,15)
insert into claseActividad(clase_id,actividad_id)
values(5,21)
insert into claseActividad(clase_id,actividad_id)
values(5,16)
insert into claseActividad(clase_id,actividad_id)
values(5,4)
insert into claseActividad(clase_id,actividad_id)
values(5,7)
insert into claseActividad(clase_id,actividad_id)
values(5,9)
insert into claseActividad(clase_id,actividad_id)
values(5,17)
insert into claseActividad(clase_id,actividad_id)
values(5,20)
insert into claseActividad(clase_id,actividad_id)
values(6,1)
insert into claseActividad(clase_id,actividad_id)
values(6,3)
insert into claseActividad(clase_id,actividad_id)
values(6,5)
insert into claseActividad(clase_id,actividad_id)
values(6,10)
insert into claseActividad(clase_id,actividad_id)
values(6,11)
insert into claseActividad(clase_id,actividad_id)
values(6,15)
insert into claseActividad(clase_id,actividad_id)
values(6,22)
insert into claseActividad(clase_id,actividad_id)
values(6,9)
insert into claseActividad(clase_id,actividad_id)
values(6,13)
insert into claseActividad(clase_id,actividad_id)
values(6,19)
insert into claseActividad(clase_id,actividad_id)
values(7,21)
insert into claseActividad(clase_id,actividad_id)
values(7,20)
insert into claseActividad(clase_id,actividad_id)
values(7,16)
insert into claseActividad(clase_id,actividad_id)
values(7,5)
insert into claseActividad(clase_id,actividad_id)
values(7,12)
insert into claseActividad(clase_id,actividad_id)
values(7,18)
insert into claseActividad(clase_id,actividad_id)
values(7,8)
insert into claseActividad(clase_id,actividad_id)
values(7,14)
insert into claseActividad(clase_id,actividad_id)
values(7,3)
insert into claseActividad(clase_id,actividad_id)
values(7,17)
insert into claseActividad(clase_id,actividad_id)
values(8,15)
insert into claseActividad(clase_id,actividad_id)
values(8,5)
insert into claseActividad(clase_id,actividad_id)
values(8,11)
insert into claseActividad(clase_id,actividad_id)
values(8,1)
insert into claseActividad(clase_id,actividad_id)
values(8,6)
insert into claseActividad(clase_id,actividad_id)
values(8,10)
insert into claseActividad(clase_id,actividad_id)
values(8,7)
insert into claseActividad(clase_id,actividad_id)
values(8,18)
insert into claseActividad(clase_id,actividad_id)
values(8,16)
insert into claseActividad(clase_id,actividad_id)
values(8,19)
insert into claseActividad(clase_id,actividad_id)
values(9,6)
insert into claseActividad(clase_id,actividad_id)
values(9,17)
insert into claseActividad(clase_id,actividad_id)
values(9,1)
insert into claseActividad(clase_id,actividad_id)
values(9,2)
insert into claseActividad(clase_id,actividad_id)
values(9,4)
insert into claseActividad(clase_id,actividad_id)
values(9,20)
insert into claseActividad(clase_id,actividad_id)
values(9,8)
insert into claseActividad(clase_id,actividad_id)
values(9,14)
insert into claseActividad(clase_id,actividad_id)
values(9,12)
insert into claseActividad(clase_id,actividad_id)
values(9,22)
insert into claseActividad(clase_id,actividad_id)
values(10,22)
insert into claseActividad(clase_id,actividad_id)
values(10,14)
insert into claseActividad(clase_id,actividad_id)
values(10,12)
insert into claseActividad(clase_id,actividad_id)
values(10,16)
insert into claseActividad(clase_id,actividad_id)
values(10,1)
insert into claseActividad(clase_id,actividad_id)
values(10,15)
insert into claseActividad(clase_id,actividad_id)
values(10,11)
insert into claseActividad(clase_id,actividad_id)
values(10,19)
insert into claseActividad(clase_id,actividad_id)
values(10,5)
insert into claseActividad(clase_id,actividad_id)
values(10,18)

select * from claseActividad

------------------------LLENANDO LA TABLA CLUBCLASE---------------------------
--select * from clubClase
--select * from club
--select * from clase
insert into clubClase(club_id,clase_id)
values(1,1)
insert into clubClase(club_id,clase_id)
values(1,2)
insert into clubClase(club_id,clase_id)
values(1,3)
insert into clubClase(club_id,clase_id)
values(1,4)
insert into clubClase(club_id,clase_id)
values(1,5)
insert into clubClase(club_id,clase_id)
values(1,6)
insert into clubClase(club_id,clase_id)
values(1,7)
insert into clubClase(club_id,clase_id)
values(1,8)
insert into clubClase(club_id,clase_id)
values(1,9)
insert into clubClase(club_id,clase_id)
values(1,10)
insert into clubClase(club_id,clase_id)
values(2,1)
insert into clubClase(club_id,clase_id)
values(2,2)
insert into clubClase(club_id,clase_id)
values(2,3)
insert into clubClase(club_id,clase_id)
values(2,4)
insert into clubClase(club_id,clase_id)
values(2,5)
insert into clubClase(club_id,clase_id)
values(2,6)
insert into clubClase(club_id,clase_id)
values(2,7)
insert into clubClase(club_id,clase_id)
values(2,8)
insert into clubClase(club_id,clase_id)
values(2,9)
insert into clubClase(club_id,clase_id)
values(2,10)
insert into clubClase(club_id,clase_id)
values(3,1)
insert into clubClase(club_id,clase_id)
values(3,2)
insert into clubClase(club_id,clase_id)
values(3,3)
insert into clubClase(club_id,clase_id)
values(3,4)
insert into clubClase(club_id,clase_id)
values(3,5)
insert into clubClase(club_id,clase_id)
values(3,6)
insert into clubClase(club_id,clase_id)
values(3,7)
insert into clubClase(club_id,clase_id)
values(3,8)
insert into clubClase(club_id,clase_id)
values(3,9)
insert into clubClase(club_id,clase_id)
values(3,10)
insert into clubClase(club_id,clase_id)
values(1,1)
insert into clubClase(club_id,clase_id)
values(1,2)
insert into clubClase(club_id,clase_id)
values(4,3)
insert into clubClase(club_id,clase_id)
values(4,4)
insert into clubClase(club_id,clase_id)
values(4,5)
insert into clubClase(club_id,clase_id)
values(4,6)
insert into clubClase(club_id,clase_id)
values(4,7)
insert into clubClase(club_id,clase_id)
values(4,8)
insert into clubClase(club_id,clase_id)
values(4,9)
insert into clubClase(club_id,clase_id)
values(4,10)
insert into clubClase(club_id,clase_id)
values(5,1)
insert into clubClase(club_id,clase_id)
values(5,2)
insert into clubClase(club_id,clase_id)
values(5,3)
insert into clubClase(club_id,clase_id)
values(5,4)
insert into clubClase(club_id,clase_id)
values(5,5)
insert into clubClase(club_id,clase_id)
values(5,6)
insert into clubClase(club_id,clase_id)
values(5,7)
insert into clubClase(club_id,clase_id)
values(5,8)
insert into clubClase(club_id,clase_id)
values(5,9)
insert into clubClase(club_id,clase_id)
values(5,10)
insert into clubClase(club_id,clase_id)
values(6,1)
insert into clubClase(club_id,clase_id)
values(6,2)
insert into clubClase(club_id,clase_id)
values(6,3)
insert into clubClase(club_id,clase_id)
values(6,4)
insert into clubClase(club_id,clase_id)
values(6,5)
insert into clubClase(club_id,clase_id)
values(6,6)
insert into clubClase(club_id,clase_id)
values(6,7)
insert into clubClase(club_id,clase_id)
values(6,8)
insert into clubClase(club_id,clase_id)
values(6,9)
insert into clubClase(club_id,clase_id)
values(6,10)
insert into clubClase(club_id,clase_id)
values(7,1)
insert into clubClase(club_id,clase_id)
values(7,2)
insert into clubClase(club_id,clase_id)
values(7,3)
insert into clubClase(club_id,clase_id)
values(7,4)
insert into clubClase(club_id,clase_id)
values(7,5)
insert into clubClase(club_id,clase_id)
values(7,6)
insert into clubClase(club_id,clase_id)
values(7,7)
insert into clubClase(club_id,clase_id)
values(7,8)
insert into clubClase(club_id,clase_id)
values(7,9)
insert into clubClase(club_id,clase_id)
values(7,10)
insert into clubClase(club_id,clase_id)
values(2,1)
insert into clubClase(club_id,clase_id)
values(2,2)
insert into clubClase(club_id,clase_id)
values(2,3)
insert into clubClase(club_id,clase_id)
values(2,4)
insert into clubClase(club_id,clase_id)
values(2,5)
insert into clubClase(club_id,clase_id)
values(2,6)
insert into clubClase(club_id,clase_id)
values(2,7)
insert into clubClase(club_id,clase_id)
values(2,8)
insert into clubClase(club_id,clase_id)
values(2,9)
insert into clubClase(club_id,clase_id)
values(2,10)
insert into clubClase(club_id,clase_id)
values(9,1)
insert into clubClase(club_id,clase_id)
values(9,2)
insert into clubClase(club_id,clase_id)
values(9,3)
insert into clubClase(club_id,clase_id)
values(9,4)
insert into clubClase(club_id,clase_id)
values(9,5)
insert into clubClase(club_id,clase_id)
values(9,6)
insert into clubClase(club_id,clase_id)
values(9,7)
insert into clubClase(club_id,clase_id)
values(9,8)
insert into clubClase(club_id,clase_id)
values(9,9)
insert into clubClase(club_id,clase_id)
values(9,10)
insert into clubClase(club_id,clase_id)
values(10,1)
insert into clubClase(club_id,clase_id)
values(10,2)
insert into clubClase(club_id,clase_id)
values(10,3)
insert into clubClase(club_id,clase_id)
values(10,4)
insert into clubClase(club_id,clase_id)
values(10,5)
insert into clubClase(club_id,clase_id)
values(10,6)
insert into clubClase(club_id,clase_id)
values(10,7)
insert into clubClase(club_id,clase_id)
values(10,8)
insert into clubClase(club_id,clase_id)
values(10,9)
insert into clubClase(club_id,clase_id)
values(10,10)
select * from clubClase


------------------------LLENANDO LA TABLA REQUISITO---------------------------
--select * from requisito
--select id,nombre from especialidad
--select id,nombre from actividad
insert into requisito(especialidad_id,actividad_id)
values(1,2)
insert into requisito(especialidad_id,actividad_id)
values(1,3)
insert into requisito(especialidad_id,actividad_id)
values(1,16)
insert into requisito(especialidad_id,actividad_id)
values(2,19)
insert into requisito(especialidad_id,actividad_id)
values(2,20)
insert into requisito(especialidad_id,actividad_id)
values(2,22)
insert into requisito(especialidad_id,actividad_id)
values(3,4)
insert into requisito(especialidad_id,actividad_id)
values(3,5)
insert into requisito(especialidad_id,actividad_id)
values(3,6)
insert into requisito(especialidad_id,actividad_id)
values(3,7)
insert into requisito(especialidad_id,actividad_id)
values(4,9)
insert into requisito(especialidad_id,actividad_id)
values(4,10)
insert into requisito(especialidad_id,actividad_id)
values(4,15)
insert into requisito(especialidad_id,actividad_id)
values(4,18)
insert into requisito(especialidad_id,actividad_id)
values(5,7)
insert into requisito(especialidad_id,actividad_id)
values(5,8)
insert into requisito(especialidad_id,actividad_id)
values(5,13)
insert into requisito(especialidad_id,actividad_id)
values(5,14)
insert into requisito(especialidad_id,actividad_id)
values(5,11)
insert into requisito(especialidad_id,actividad_id)
values(6,1)
insert into requisito(especialidad_id,actividad_id)
values(6,21)
insert into requisito(especialidad_id,actividad_id)
values(6,12)
insert into requisito(especialidad_id,actividad_id)
values(7,18)
insert into requisito(especialidad_id,actividad_id)
values(7,17)
insert into requisito(especialidad_id,actividad_id)
values(7,12)
select * from requisito

------------------------LLENANDO LA TABLA CLASE ESPECIALIDAD---------------------------
--select * from ClaseEspecialidad
--select id,nombre from clase
--select id,nombre from especialidad

insert into ClaseEspecialidad(clase_id,especialidad_id)
values(1,1)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(1,2)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(2,3)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(2,4)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(3,5)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(3,6)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(4,1)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(4,7)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(5,2)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(5,6)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(6,3)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(6,5)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(7,1)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(7,2)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(7,3)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(7,4)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(7,5)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(7,6)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(7,7)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(8,4)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(8,7)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(9,3)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(9,4)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(10,6)
insert into ClaseEspecialidad(clase_id,especialidad_id)
values(10,1)
select * from ClaseEspecialidad

------------------------LLENANDO LA TABLA TRABAJADOR---------------------------
--select * from trabajador
--select id from persona 
--select * from tipoEmpleado
--select id,nombre from club 
----- ESTATUS; 0 ES INACTIVO, 1 ES ACVTIVO
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(1,1,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(2,2,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(3,3,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(4,4,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(5,6,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(6,5,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(7,5,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(8,5,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(9,5,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(10,5,1,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(11,1,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(12,2,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(13,3,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(14,4,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(15,6,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(16,5,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(17,5,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(18,5,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(19,5,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(20,5,2,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(21,1,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(22,2,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(23,3,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(24,4,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(25,6,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(26,5,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(27,5,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(28,5,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(29,5,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(30,5,3,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(31,1,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(32,2,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(33,3,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(34,4,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(35,6,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(36,5,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(37,5,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(38,5,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(39,5,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(40,5,4,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(41,1,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(42,2,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(43,3,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(44,4,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(45,6,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(46,5,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(47,5,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(48,5,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(49,5,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(50,5,5,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(51,1,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(52,2,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(53,3,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(54,4,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(55,6,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(56,5,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(57,5,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(58,5,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(59,5,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(60,5,6,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(61,1,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(62,2,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(63,3,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(64,4,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(65,6,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(66,5,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(67,5,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(68,5,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(69,5,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(70,5,7,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(71,1,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(72,2,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(73,3,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(74,4,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(75,6,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(76,5,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(77,5,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(78,5,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(79,5,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(80,5,8,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(81,1,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(82,2,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(83,3,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(84,4,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(85,6,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(86,5,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(87,5,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(88,5,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(89,5,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(90,5,9,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(91,1,10,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(92,2,10,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(93,3,10,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(94,4,10,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(95,6,10,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(96,5,10,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(97,5,10,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(98,5,10,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(99,5,10,'01/05/2017',1 )
insert into trabajador(trabajador_id,tipoEmp_id,club_id,fechaInicio,estatus)
values(100,5,10,'01/05/2017',1 )
select * from trabajador

------------------------LLENANDO LA TABLA HISTORIALTRABAJADOR---------------------------
--select * from HistorialTrabajador
--select * from especialidad
--select trabajador_id from trabajador where tipoEmp_id like '5' 
--5 SIGNIFICA QUE ES INSTRUCTOR
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(6,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(6,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(6,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(6,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(6,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(6,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(6,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(7,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(7,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(7,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(7,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(7,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(7,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(7,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(8,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(8,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(8,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(8,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(8,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(8,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(8,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(9,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(9,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(9,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(9,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(9,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(9,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(9,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(10,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(10,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(10,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(10,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(10,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(10,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(10,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(16,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(16,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(16,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(16,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(16,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(16,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(16,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(17,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(17,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(17,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(17,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(17,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(17,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(17,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(18,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(18,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(18,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(18,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(18,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(18,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(18,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(19,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(19,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(19,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(19,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(19,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(19,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(19,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(20,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(20,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(20,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(20,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(20,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(20,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(20,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(26,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(26,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(26,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(26,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(26,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(26,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(26,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(27,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(27,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(27,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(27,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(27,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(27,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(27,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(28,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(28,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(28,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(28,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(28,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(28,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(28,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(29,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(29,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(29,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(29,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(29,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(29,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(29,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(30,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(30,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(30,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(30,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(30,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(30,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(30,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(36,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(36,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(36,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(36,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(36,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(36,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(36,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(37,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(37,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(37,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(37,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(37,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(37,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(37,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(38,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(38,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(38,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(38,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(38,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(38,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(38,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(39,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(39,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(39,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(39,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(39,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(39,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(39,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(40,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(40,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(40,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(40,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(40,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(40,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(40,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(46,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(46,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(46,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(46,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(46,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(46,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(46,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(47,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(47,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(47,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(47,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(47,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(47,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(47,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(48,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(48,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(48,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(48,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(48,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(48,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(48,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(49,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(49,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(49,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(49,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(49,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(49,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(49,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(50,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(50,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(50,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(50,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(50,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(50,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(50,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(56,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(56,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(56,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(56,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(56,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(56,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(56,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(57,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(57,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(57,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(57,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(57,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(57,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(57,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(58,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(58,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(58,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(58,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(58,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(58,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(58,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(59,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(59,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(59,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(59,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(59,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(59,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(59,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(60,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(60,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(60,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(60,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(60,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(60,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(60,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(66,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(66,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(66,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(66,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(66,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(66,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(66,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(67,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(67,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(67,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(67,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(67,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(67,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(67,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(68,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(68,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(68,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(68,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(68,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(68,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(68,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(69,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(69,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(69,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(69,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(69,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(69,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(69,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(70,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(70,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(70,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(70,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(70,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(70,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(70,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(76,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(76,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(76,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(76,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(76,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(76,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(76,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(77,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(77,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(77,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(77,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(77,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(77,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(77,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(78,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(78,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(78,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(78,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(78,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(78,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(78,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(79,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(79,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(79,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(79,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(79,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(79,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(79,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(80,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(80,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(80,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(80,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(80,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(80,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(80,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(86,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(86,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(86,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(86,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(86,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(86,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(86,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(87,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(87,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(87,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(87,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(87,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(87,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(87,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(88,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(88,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(88,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(88,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(88,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(88,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(88,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(89,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(89,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(89,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(89,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(89,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(89,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(89,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(90,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(90,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(90,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(90,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(90,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(90,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(90,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(96,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(96,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(96,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(96,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(96,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(96,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(96,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(97,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(97,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(97,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(97,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(97,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(97,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(97,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(98,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(98,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(98,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(98,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(98,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(98,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(98,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(99,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(99,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(99,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(99,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(99,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(99,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(99,7)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(100,1)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(100,2)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(100,3)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(100,4)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(100,5)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(100,6)
insert into HistorialTrabajador(trabajador_id,especialidad_id)
values(100,7)
select * from HistorialTrabajador
