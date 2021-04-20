(: -- Obtener el nombre de todos los alumnos matriculados en algún módulo.:)
(:SELECT * FROM alumnos al, asignaturas a WHERE EXISTS
    (SELECT * FROM notas n
    WHERE al.cod = n.alum AND a.cod = n.asig); :)

(:Devuelve el nombre de los alumnos:)
for $al in doc("alumnos.xml")/clase
return <nombres>{$al//apenom}</nombres>,
"_-----------------------------------------------------------_",
(:LET Almacena todo dentro de una variable :)
for $b in doc("alumnos.xml")/clase
let $as := $b//asignatura/@nombre
return <nombres>{$b//apenom/data()}</nombres>,
<asignaturas>{$as}</asignaturas>,
<notas>{$b/notas}</notas>