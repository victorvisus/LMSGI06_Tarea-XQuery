"1.Obtener el nombre de todos los alumnos matriculados en algún módulo.",
for $alu in doc("alumnos.xml")//alumno
for $no in doc("alumnos.xml")//nota
where $no/@alum union $alu/@cod and $no/@alum = $alu/@cod
return <alumno_matriculado asignatura="{$no/@asig/data()}">{$alu/apenom/text()}</alumno_matriculado>
,

"2.Obtener las calificaciones del alumno de código 'n43483437' en cada módulo.",
for $no in doc("alumnos.xml")/clase/notas/nota
where $no/@alum ="n43483437"
return <alumno cod="{data($no/@alum)}" asignatura="{data($no/@asig)}" nota="{data($no/@calificacion)}" />
,

"3.Obtener el nombre y el teléfono de cada alumno ordenado por apellidos de forma descendiente.",
for $a in doc("alumnos.xml")//alumno
let $nom := $a/apenom
let $tel := $a/telef
order by $nom descending
return <datos_alum nombre="{$nom}" telefono="{$tel}" />
,

"4.¿Cuántos módulos hay?",
let $b := doc("alumnos.xml")//asignatura
return <asignaturas total="{data(count($b))}"/>
,

"5. Obtener los nombres de los alumnos matriculados en LMSGI y sus notas ordenado por notas.",
for $alu in doc("alumnos.xml")//alumno
for $asi in doc("alumnos.xml")//asignatura
for $not in doc("alumnos.xml")//nota
where $asi/@nombre="LMSGI" and $asi/@cod = $not/@asig and $not/@alum = $alu/@cod
return <lmgs alumno="{$alu/apenom/data()}" nota="{$not/@calificacion/data()}"/>
,

"6. Obtener los nombres y las calificaciones de los matriculados en FH que han aprobado.",
for $alu in doc("alumnos.xml")//alumno
for $asi in doc("alumnos.xml")//asignatura
for $not in doc("alumnos.xml")//nota
where $asi/@nombre="FH" and $asi/@cod = $not/@asig and $not/@alum = $alu/@cod and $not/@calificacion >= 5
return <fh alumno="{$alu/apenom/data()}" nota="{$not/@calificacion/data()}"/>