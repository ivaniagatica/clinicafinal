
create database CLINICA_BDO
use CLINICA_BDO

CREATE TABLE citas(
Idcitas int identity primary key,
nombre varchar(100),
telefono varchar(100),
correo varchar(100),
fecha varchar(100),
hora varchar(100),
comentario varchar(100)
)
--------------------------------------------
CREATE TABLE inventario(
   Idinventario   int identity primary key, 
  descripcion   VARCHAR(100),
  unitario  VARCHAR(100),
  ingreso varchar(100),
  precio  VARCHAR(100), 
  codigo     VARCHAR(100), 
  cantidad  VARCHAR(100) 
)
------------------------------------------------
CREATE TABLE  ficha(
   Idficha   int identity primary key, 
  nombreficha   VARCHAR(100),
  apellido VARCHAR(100),
  nacimiento VARCHAR(100),
  edad VARCHAR(100),
  dpi VARCHAR(100),
  direccion VARCHAR(100),
  genero VARCHAR(100),
  doctora  VARCHAR(100),
  tratamiento  VARCHAR(100), 
)


-----------------------------------citas------------------------------------------------

create procedure sp_listar
as
begin
     select * from citas
end

----------------------------------------

create procedure sp_obtener(
@Idcitas int
)
as
begin 
    select * from citas where Idcitas = @Idcitas
end


----------------------------

create procedure sp_guardar(
@nombre varchar(100),
@telefono varchar(100),
@correo varchar(100),
@fecha varchar(100),
@hora varchar(100),
@comentario varchar(100)
)
as 
 begin 
     insert into citas (nombre,telefono,correo,fecha,hora,comentario) values (@nombre,@telefono,@correo,@fecha,@hora,@comentario)
	 end

---------------------------

create procedure sp_editar(
@Idcitas int,
@nombre varchar(100),
@telefono varchar(100),
@correo varchar(100),
@fecha varchar(100),
@hora varchar(100),
@comentario varchar(100)
)
as
  begin 
      update citas set nombre = @nombre, telefono = @telefono, correo = @correo, fecha = @fecha,hora =@hora,comentario = @comentario where Idcitas = @Idcitas
end

------------------------

create procedure sp_eliminar(
@Idcitas int
)
as
begin
    delete from citas where Idcitas = @Idcitas
end


---------------------------------------------------inventario -----------------------------------------

create procedure sp_listarinventario
as
begin
     select * from inventario
end

--------------------------------


create procedure sp_obtenerinventario(
@Idinventario int
)
as
begin 
    select * from inventario where Idinventario = @Idinventario
end


--------------------------------------------
create procedure sp_guardarinventario(
@descripcion varchar(100),
@unitario varchar(100),
@ingreso varchar(100),
@precio varchar(100),
@codigo varchar(100),
@cantidad varchar(100)
)
as 
 begin 
     insert into inventario(descripcion,unitario,ingreso,precio,codigo,cantidad) values (@descripcion,@unitario,@ingreso,@precio,@codigo,@cantidad)
	 end

------------------------------------------

create procedure sp_editarinventario(
@Idinventario int,
@descripcion varchar(100),
@unitario varchar(100),
@ingreso varchar(100),
@precio varchar(100),
@codigo varchar(100),
@cantidad varchar(100)
)
as
  begin 
      update inventario set descripcion = @descripcion, unitario = @unitario, ingreso = @ingreso,precio = @precio, codigo = @codigo, cantidad = @cantidad where Idinventario = @Idinventario
end
------------------------------------------------
create procedure sp_eliminarinventario(
@Idinventario int
)
as
begin
    delete from inventario where Idinventario = @Idinventario
end

-----------------------------------------------------ficha-----------------------------

create procedure sp_listarficha
as
begin
     select * from ficha
end

-------------------------------

create procedure sp_obtenerficha(
@Idficha int
)
as
begin 
    select * from ficha where Idficha = @Idficha
end

-------------------------------------------------
create procedure sp_guardarficha(
@nombreficha varchar(100),
@apellido varchar(100),
@nacimineto varchar(100),
@edad varchar(100),
@dpi varchar(100),
@direccion varchar(100),
@genero VARCHAR(100),
@doctora  VARCHAR(100),
@tratamiento  VARCHAR(100)
)
as 
 begin 
     insert into ficha(nombreficha,apellido,nacimiento,edad,dpi,direccion,genero,doctora,tratamiento) values (@nombreficha,@apellido,@nacimineto,@edad,@dpi,@direccion,@genero,@doctora,@tratamiento)
	 end

---------------------------------------------------------------
create procedure sp_editarficha(
@Idficha int,
@nombreficha varchar(100),
@apellido varchar(100),
@nacimineto varchar(100),
@edad varchar(100),
@dpi varchar(100),
@direccion varchar(100),
@genero VARCHAR(100),
@doctora  VARCHAR(100),
@tratamiento  VARCHAR(100)
)
as
  begin 
      update ficha set nombreficha = @nombreficha, apellido = @apellido, nacimiento = @nacimineto, edad = @edad, dpi =@dpi, direccion=@direccion,genero = @genero,doctora =@doctora,tratamiento=@tratamiento where Idficha = @Idficha
end

-----------------------------------------------------------------

create procedure sp_eliminarficha(
@Idficha int
)
as
begin
    delete from ficha where Idficha = @Idficha
end

-----------------------------
