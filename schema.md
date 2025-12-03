## Table name: Università

## Dipartimento
 - id
 - nome
 - indirizzo
 - telefono
 - email


 ## Corso di Laurea
 - id
 - nome
 - durata_anni
 - dipartimento_id


## Corso
 - id
 - nome
 - crediti
 - insegnante_id
 - corso_di_laurea_id


## Insegnanti
 - id
 - nome
 - cognome
 - email
 - telefono
 - corso_id

 

## Esame
 - id
 - data
 - voto
 - corso_id
 - studente_id
 - insegnante_id
    

## Studente
 - id
 - nome
 - cognome
 - email
 - corso_di_laurea_id
 - matricola
