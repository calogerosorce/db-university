#Selezionare tutti gli studenti nati nel 1990 (160)
/*
SELECT *
FROM `students` 
WHERE YEAR(`date_of_birth`) = "1990";
*/

#Selezionare tutti i corsi che valgono più di 10 crediti (479)
/*
SELECT *
FROM `courses`
WHERE `cfu` > 10
*/

#Selezionare tutti gli studenti che hanno più di 30 anni
/*
SELECT *
FROM `students`
WHERE YEAR(`date_of_birth`) < YEAR(CURDATE()) - 30;
*/

#Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
/*
SELECT *
FROM `courses`
WHERE `period` = "I semestre" AND `year` = 1;
*/

#Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
/*
SELECT *
FROM `exams`
WHERE HOUR(`hour`) > 13 AND DATE(`date`) = '2020-06-20';
*/

#Selezionare tutti i corsi di laurea magistrale (38)
/*
SELECT *
FROM `degrees`
WHERE `level` = "magistrale";
*/

#Da quanti dipartimenti è composta l'università? (12)
/*
SELECT COUNT(`id`) AS `total_departments` 
FROM `departments`;
*/

#Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
/*
SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL;
*/

#Contare quanti iscritti ci sono stati ogni anno
/*
SELECT YEAR(`enrolment_date`) AS  `anno_iscrizione`, COUNT(*) AS `total_students`
FROM `students`
GROUP BY `anno_iscrizione`;
*/

#Contare gli insegnanti che hanno l'ufficio nello stesso edificio
/*
SELECT COUNT(*) AS `office_total`, `office_address`
FROM `teachers`
GROUP BY `office_address`;
*/

#Calcolare la media dei voti di ogni appello d'esame
/*
SELECT ROUND(AVG(`vote`),2) AS `decimals`, `exam_id`
FROM `exam_student`
GROUP BY `exam_id`;
*/

#Contare quanti corsi di laurea ci sono per ogni dipartimento
/*
SELECT `department_id`, COUNT(*) AS `count_department` 
FROM `degrees`
GROUP BY `department_id`;
*/