# API Cursos Bootcamp

Se entrega un servicio que permite hacer CRUD de las entidades usuario y bootcamp, así como también asociar un usuario a un bootcamp mediante requests HTTP con el respectivo método y payload. El payload soportado es en formato JSON.


## Metodos soportados:

<b>GET</b>: Obtener información de un usuario o todos los usuarios/Bootcamp

<b>POST</b>: Crear un nuevo Usuario/Bootcamp

<b>POST</b>: Vincular un Usuario a un Bootcamp deseado

<b>PUT</b>: Actualizar la información de un Usuario

<b>DELETE</b>: Eliminar un Usuario


## Instrucciones

Para ejecutar el servidor de ejemplo:

Verificar que el puerto 3000 no esté en uso

Ejecutar <b>npm run dev</b>  desde la terminal

El servidor estará disponible en http://localhost:3000


## Ejemplos de requests para Bootcamp


<b>Obtener información de todos los Bootcamps:</b>

GET http://localhost:3000/api/bootcamps


<b>Obtener información de todos los Bootcamps:</b>

GET http://localhost:3000/api/bootcamps/1


<b>Crear Bootcamp:</b>

POST http://localhost:3000/api/bootcamps/

Por body -> raw -> JSON se entregan los siguientes datos: { title, cue, description}


<b>Vincular User a Bootcamp:</b>

POST http://localhost:3000/api/bootcamps/vinculate/

Por body -> raw -> JSON se entregan los siguientes datos: { idBootcamp, idUser }


## Ejemplos de requests para User


<b>Obtener información de todos los usuarios:</b>

GET http://localhost:3000/api/users


<b>Obtener información de un usuario en particular (ID)</b>

GET http://localhost:3000/api/users/2


<b>Crear User:</b>

POST http://localhost:3000/api/users/

Por body -> raw -> JSON se entregan los siguientes datos: { firstName, lastName, email }


<b>Modificar User seleccionando por ID:</b>

PUT http://localhost:3000/api/users/1

Por params se entrega el ID: { id }
Por body -> raw -> JSON se entregan los siguientes datos: { firstName, lastName, email }


<b>Se elimina modificando el status del User seleccionando por ID:</b>

DELETE http://localhost:3000/api/users/1

Por params se entrega el ID: { id }


<b>Se elimina destruyendo el User seleccionando por ID:</b>

DELETE http://localhost:3000/api/users/destroy/1

Por params se entrega el ID: { id }
