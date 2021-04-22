(: 2.	Consulta que devuelve las titulaciones de los ciclos que hayan sido publicadas 
a partir del año 2010 incluido, ordenados alfabéticamente por titulación. :)
for $a in doc("clase2.xml")//fp/ciclos_informatica/ciclo
where $a/anyo >= 2010
order by $a/titulacion
return
<modulo>{data($a/nombre)}{ $a/modulos/modulo/nombre }</modulo>
