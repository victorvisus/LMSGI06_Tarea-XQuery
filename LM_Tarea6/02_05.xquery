(: 5.	Consulta que obtiene para cada uno de los módulos el nombre y las horas. :)
for $a in doc("clase2.xml")//fp/ciclos_informatica/ciclo
order by $a
return
<ciclo>
<titulo>{data($a/nombre)}</titulo>
{for $b in $a/modulos/modulo
order by $b/nombre
return
<modulo>{data($b/nombre)," - ",data($b/horas),"horas"}</modulo>}
</ciclo>
