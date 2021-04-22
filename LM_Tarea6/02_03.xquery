(: 3.	Obtener el nombre de los módulos de todos los ciclos que tienen una duración de 96 horas. :)
for $a in doc("clase2.xml")//fp/ciclos_informatica/ciclo
order by $a
return
<ciclo>
<titulo>{data($a/nombre)}</titulo>
{for $b in $a/modulos/modulo
where number($b/horas) = 96
order by $b/nombre
return
<modulo>{data($b/nombre)}</modulo>}
</ciclo>
