-- Obtener el nombre de todos los alumnos matriculados en alg�n m�dulo.
SELECT * FROM alumnos al, asignaturas a WHERE EXISTS
    (SELECT * FROM notas n
    WHERE al.cod = n.alum AND a.cod = n.asig);
    
-- Obtener las calificaciones del alumno de c�digo "n43483437" en cada m�dulo.
SELECT al.apenom, a.nombre, n.calificacion FROM alumnos al, asignaturas a, notas n
    WHERE al.cod LIKE('n43483437') AND a.cod = n.asig AND n.alum LIKE('n43483437');
    
-- Obtener el nombre y el tel�fono de cada alumno ordenado por apellidos de forma descendiente.
SELECT apenom, telef FROM alumnos ORDER BY apenom DESC;