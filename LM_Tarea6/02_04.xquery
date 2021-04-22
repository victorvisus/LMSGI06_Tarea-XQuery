(: 4.	Obtener las órdenes que regulan los ciclos de informática en Andalucía junto con el 
nombre de ciclo formativo. :)
for $a in doc("clase2.xml")//fp/ciclos_informatica/ciclo
order by $a
return
<ciclo>
<titulo>{data($a/nombre)}</titulo>
{for $b in $a/legislacion/orden
return
<orden>{data($b)}</orden>}
</ciclo>
