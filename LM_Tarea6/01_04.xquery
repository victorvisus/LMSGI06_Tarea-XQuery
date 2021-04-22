(: 4.	¿Cuántos módulos hay? :)
let $a := doc("clase.xml")//asignaturas/asignatura
return
<alumno>{ "Existen: ",data(count($a)),"módulos distintos" }</alumno>
