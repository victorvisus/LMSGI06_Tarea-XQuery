-- Obtener el nombre de todos los alumnos matriculados en algún módulo.
SELECT * FROM alumnos al, asignaturas a WHERE EXISTS
    (SELECT * FROM notas n
    WHERE al.cod = n.alum AND a.cod = n.asig);
    
-- Obtener las calificaciones del alumno de código "n43483437" en cada módulo.
SELECT al.apenom, a.nombre, n.calificacion FROM alumnos al, asignaturas a, notas n
    WHERE al.cod LIKE('n43483437') AND a.cod = n.asig AND n.alum LIKE('n43483437');
    
-- Obtener el nombre y el teléfono de cada alumno ordenado por apellidos de forma descendiente.
SELECT apenom, telef FROM alumnos ORDER BY apenom DESC;