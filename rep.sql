--  3.1 

-- select * 
-- from LIVRE 
-- join DETAILCOMMANDE on DETAILCOMMANDE.isbn = LIVRE.isbn
-- join COMMANDE on DETAILCOMMANDE.numcom = COMMANDE.numcom
-- where COMMANDE.datecom = '2024-12-01';

select * 
from LIVRE 
join DETAILCOMMANDE on DETAILCOMMANDE.isbn = LIVRE.isbn
join COMMANDE on DETAILCOMMANDE.numcom = COMMANDE.numcom
where COMMANDE.datecom = str_to_date('01/12/2024', '%d/%m/%Y');



SELECT DISTINCT CLIENT.*
FROM CLIENT
JOIN COMMANDE ON COMMANDE.idcli = CLIENT.idcli
JOIN DETAILCOMMANDE ON COMMANDE.numcom = DETAILCOMMANDE.numcom
JOIN LIVRE ON DETAILCOMMANDE.isbn = LIVRE.isbn
JOIN ECRIRE on ECRIRE.isbn = LIVRE.isbn
join AUTEUR on ECRIRE.idauteur = AUTEUR.idauteur
WHERE AUTEUR.nomauteur = 'René Goscinny' -- 
    AND COMMANDE.datecom LIKE '2021%';
