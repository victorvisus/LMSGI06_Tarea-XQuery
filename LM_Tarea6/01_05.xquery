(:5.	Obtener los nombres de los alumnos matriculados en LMSGI y sus notas, ordenado por notas. :)
for $a in doc("clase.xml")//asignaturas/asignatura,
$b in $a/../../notas/nota,
$c in $a/../../alumnos/alumno
where $a/@nombre="LMSGI" and $b/@asig = $a/@cod and $c/@cod = $b/@alum
order by $b/@calificacion
return
<alumno>{ "Nombre: ",data($c/apenom)," Calificacion: ",data($b/@calificacion) }</alumno>
