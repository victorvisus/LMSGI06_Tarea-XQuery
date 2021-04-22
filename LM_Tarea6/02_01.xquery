(: 1.	Consulta que devuelve los nombres de los ciclos que tienen como identificador “DAM”. :)
for $a in doc("clase2.xml")//fp/ciclos_informatica/ciclo
where $a/@id = "DAM"
return
<modulo>{ $a/modulos/modulo/nombre }</modulo>
