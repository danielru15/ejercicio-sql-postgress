-- listar los libros 

select * from libros;

-- listar los autores 

select * from autores;

-- Listar usuarios

select * from usuarios;
select * from libros_usuarios;

-- autor con mas libros 

select autores.nombre, count(libro_id) 
from autores inner join libros on autores.autor_id=libros.autor_id
Group by autores.nombre
order by count desc
limit 1;

-- Libro que más prestan los usuarios
select libros.titulo,
libros_usuarios.libro_id, count(libros.libro_id) 
from libros_usuarios inner join libros on libros_usuarios.libro_id=libros.libro_id
group by libros.titulo, 
libros_usuarios.libro_id
order by count desc
limit 1;

-- Usuario que más libros ha prestado

select usuarios.nombre, 
count(libros_usuarios.usuario_id) 
from libros_usuarios inner join usuarios on usuarios.usuario_id=libros_usuarios.usuario_id
group by usuarios.nombre
order by count desc
limit 1;

-- Usuario que menos libros ha prestado
select usuarios.nombre, 
count(libros_usuarios.usuario_id) 
from libros_usuarios inner join usuarios on usuarios.usuario_id=libros_usuarios.usuario_id
group by usuarios.nombre
order by count asc
limit 1;

-- Libro que menos se ha prestado
select libros.titulo,
libros_usuarios.libro_id, count(libros.libro_id) 
from libros_usuarios inner join libros on libros_usuarios.libro_id=libros.libro_id
group by libros.titulo, 
libros_usuarios.libro_id
order by count asc
limit 1;