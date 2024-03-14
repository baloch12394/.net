create database mydatabase
use mydatabase
create table form(
id int identity(1,1),
Fname varchar(30),
Lname varchar (30),
addres varchar (30),
email varchar (30)

);

create procedure insert_fun
@id int,
@Fname varchar(30),
@lname varchar (30),
@addres varchar (30),
@email varchar (30)
as
begin
insert into form (Fname,Lname,addres,email) values (@Fname,@lname,@addres,@email)
end
create procedure show_data
as
begin
select * from form
end
use mydatabase
create procedure updat_data
@id int,
@Fname varchar(30),
@Lname varchar (30),
@addres varchar (30),
@email varchar (30)
as
begin
update  form set Fname=@Fname,Lname=@Lname,addres=@addres,email=@email where id=@id
end
create procedure delet
@id int ,
@Fname varchar (30),
@Lname varchar (30),
@addres varchar(30),
@email varchar (30)
as
begin
delete from form where id=@id
end