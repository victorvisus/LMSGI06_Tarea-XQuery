(: 3.	Obtener el nombre y el teléfono de cada alumno ordenado por apellidos de forma descendiente. :) 
for $a in doc("clase.xml")//alumnos/alumno
let $b := index-of($a/apenom,',')
order by $a/apenom descending
return
<alumno>{ data(substring-after($a/apenom,',')),"---",data($a/telef) }</alumno>
