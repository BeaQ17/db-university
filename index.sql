/* 1. Selezionare studenti nati nel 1990 */
SELECT * FROM `students` WHERE `date_of_birth` >= '1990-01-01'

/* 2. Selezionare corsi che valgono più di 10 crediti */
SELECT * FROM `courses` WHERE `cfu` >= 10

/* 3. Selezionare studenti con più di 30 anni */
