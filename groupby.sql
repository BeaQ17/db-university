/* 1. Contare quanti iscritti ci sono stati ogni anno */
SELECT COUNT(*) AS `numero_iscritti`, YEAR(`enrolment_date`) AS `anno` FROM `students` GROUP BY `anno`

/* 2. Contare insegnanti con ufficio nello stesso edificio */
SELECT COUNT(*) AS `numero_insegnanti`, `office_address` FROM `teachers` GROUP BY `office_address`

/* 3. Calcolare la media dei voti di ogni appello d'esame */
