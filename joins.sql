/* 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */
/*SELECT * FROM `students` WHERE `degree_id` = 53*/
SELECT `students`.* 
FROM `students` 
JOIN `degrees` 
ON degrees.id = students.degree_id 
WHERE degrees.name = `Corso di laurea in Economia`

/* 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze */
/*SELECT * FROM `degrees` WHERE `department_id` = 7*/
SELECT `degrees`.* 
FROM `degrees` 
JOIN `departments` 
ON `departments`.`id` = `degrees`, `department`.`id` 
WHERE `departments`.`name` = `Dipartimento di Neuroscienze`

/* 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44) */
SELECT `courses`.*
FROM `course_teacher`
JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers` ON teachers.id = course_teacher.teacher_id
WHERE teachers.id = 44

/* 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome */
SELECT students.surname, students.name, degrees.name 
as `degree_name`, degrees.level, departments.name
as `department_name`
FROM students
JOIN degrees ON students.degree_id = degrees.id
JOIN departments ON degrees.department_id = departments.id
ORDER BY students.surname, students.name


/* 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti */
SELECT degrees.name as `degree_name`, courses.name as `course_name`, teachers.name as `teacher_name`, teachers.surname as `teacher_surname`
FROM degrees
JOIN courses ON degrees.id = courses.degree_id
JOIN course_teacher ON course_teacher.course_id = courses.id
JOIN teachers ON course_teacher.teacher_id = teachers.id

/* 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54) */
SELECT departments.name as `nome_dipartimento`, departments.address, departments.website, teachers.name as `nome_docente`, teachers.surname as `cognome_docente`
FROM departments
JOIN degrees ON degrees.department_id = departments.id
JOIN courses ON degrees.id = courses.degree_id
JOIN course_teacher ON courses.id = course_teacher.course_id
JOIN teachers ON course_teacher.teacher_id = teachers.id
WHERE departments.name = "Dipartimento di Matematica"

/* 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami */
SELECT COUNT(courses.name) AS 'tentativi', students.name AS 'student_name', students.surname AS 'student_surname' , courses.name AS 'course_name' 
FROM exam_student 
JOIN exams 
ON exam_student.exam_id = exams.id 
JOIN students 
ON exam_student.student_id = students.id 
JOIN courses 
ON exams.course_id = courses.id 
GROUP BY students.id, courses.name

/*
SELECT students.name AS nome_studente, students.surname AS cognome_studente, courses.name AS nome_corso, COUNT(exams.id) AS tentativi
FROM courses
JOIN exams ON courses.id = exams.course_id
JOIN exam_student ON exams.id  = exam_student.exam_id
JOIN students ON exam_student.student_id = students.id
WHERE exam_student.vote < 18
GROUP BY courses.id, students.id
*/