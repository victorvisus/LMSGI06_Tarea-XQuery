(: 6.	Devolver el nombre y las horas de los módulos ordenados desde el nombre del modulo
más corto hasta el nombre del módulo más largo. :)
for $a in doc("clase2.xml")//fp/ciclos_informatica/ciclo/modulos/modulo
order by string-length($a/nombre)
return
<modulo>{data($a/nombre)," - ",data($a/horas),"horas"}</modulo>
