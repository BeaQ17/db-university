/* 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */
SELECT * FROM `students` WHERE `degree_id` = 53

/* 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze */
SELECT * FROM `degrees` WHERE `department_id` = 7