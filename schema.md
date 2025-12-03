## Table name: Università

## Dipartimento
 - id PK BIGINT AI 
 - nome VARCHAR(30) NOT NULL
 - indirizzo VARCHAR(50) NOT NULL
 - telefono MEDIUMINT NOT NULL
 - email VARCHAR(50) NOT NULL


 ## Corso di Laurea
 - id PK BIGINT AI 
 - nome VARCHAR(30) NOT NULL
 - durata_anni TYNINT NOT NULL
 - dipartimento_id BIG INT FK NOT NULL 


## Corso
 - id PK BIGINT AI 
 - nome VARCHAR(30) NOT NULL
 - crediti TYNINT NOT NULL
 - corso_di_laurea_id BIG INT FK NOT NULL


## Insegnanti
 - id PK BIGINT AI 
 - nome VARCHAR(6) NOT NULL
 - cognome VARCHAR(30) NOT NULL
 - email VARCHAR(50) NOT NULL
 - telefono MEDIUMINT NOT NULL
 - corso_id BIG INT FK NOT NULL

 

## Esame
 - id PK BIGINT AI 
 - nome VARCHAR(30) NOT NULL
 - data DATETIME NOT NULL
 - corso_id BIG INT FK NOT NULL
 - studente_id BIG INT FK NOT NULL
    

## Studente
 - id PK BIGINT AI 
 - nome VARCHAR(30) NOT NULL
 - cognome VARCHAR(30) NOT NULL
 - email VARCHAR(50) NOT NULL
 - telefono MEDIUMINT NOT NULL
 - corso_di_laurea_id BIG INT FK NOT NULL
 - matricola VARCHAR(6) NOT NULL
