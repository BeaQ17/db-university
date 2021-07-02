/* 1. Selezionare studenti nati nel 1990 */
SELECT * FROM `students` WHERE `date_of_birth` >= '1990-01-01'

/* 2. Selezionare corsi che valgono più di 10 crediti */
SELECT * FROM `courses` WHERE `cfu` >= 10

/* 3. Selezionare studenti con più di 30 anni */
SELECT * FROM `students` WHERE `date_of_birth` >= '1991-01-01'

/* 4. Selezionare corsi del primo semestre del primo anno di laurea */
SELECT * FROM `courses` WHERE `period` = 'I semestre' AND `year` = 1

/* 5. Selezionare appelli pomeridiani */
SELECT * FROM `exams` WHERE `hour` >= '14:00:00'