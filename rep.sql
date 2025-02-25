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
