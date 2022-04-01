select * from clientes;
insert into clientes(nit,nombres,apellidos,direccion,telefono,fecha_nacimiento)
values('11234','Jose Luis','Perez Lopez','Guatemala','5555','2000-10-01');

select * from puestos;
INSERT INTO empleados
(codigo,nombres,apellidos,direcion,telefono,fecha_nacimiento,id_puesto)
VALUES('E002','Julio','Guzman','Guatemala','22','1993-01-01',2);
select * from empleados;

update empleados set codigo='E002', nombres='Julio', apellidos='Diaz lopez'
where id_empleado=3;
update empleados set telefono='2222'
where id_empleado=3;

delete from empleados where id_empleado=4;
select * from empleados;

select e.id_empleado, e.codigo,e.nombres,e.apellidos,e.direcion,e.telefono,e.fecha_nacimiento,p.puesto 
from empleados as e inner join puestos as p on e.id_puesto = p.id_puesto;