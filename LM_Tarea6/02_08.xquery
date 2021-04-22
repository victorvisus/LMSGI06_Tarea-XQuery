(: 8.	Devolver la suma de horas de los módulos del ciclo SMR excepto el modulo de 
“Formación y Orientación Laboral” :)
for $a in doc("clase2.xml")//fp/ciclos_informatica/ciclo[@id="SMR"]
return
let $b := $a/modulos/modulo[nombre != "Formación y Orientación Laboral"]
return
<hora>{sum($b/horas)}</hora>
