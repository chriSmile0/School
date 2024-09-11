 -------------tests pour la table Ingridient---------
-- (RefIngridient,Nom, Calorie ,RefRecette )

insert into ingridient values ('1','Ouef, farine, sucre, huile','400','5');
insert into ingridient values ('2','salade vert, tomate, olive noir,carote','50','9');
insert into ingridient values ('3','viande , pomme de terre, creme, frommage ','600','8');

 -------------tests pour la table utilisateur---------
 --(login, e-mail,mot_de_passe)
 
insert into utilisateur values (' Mmarti','Mmarti@gmail.com', 'mimacoll');
insert into utilisateur values('mamy','coco@gmail.fr','mamycou');
insert into utilisateur values('saror', 'lolo@gmail.com' , 'sarocool');

-------------tests pour la table recette---------
--(RefRecette, Nombre_de_personne, CalorieRecette, NomRecette, description, Difficulte, Prix, Temps_preparation, Temps_cuisson, image, video)

insert into recette values ('5','5','400','kake','Gateau facile et tres bon','2','4','15 min','30 min','15','1');
insert into recette values ('8','6','600','gratin','tres bon','3','3','20 min','60 min','4','1');
insert into recette values ('9','4','50','salade vert','Miam','1','5','10 min','0 min','1','1');

-------------tests pour la table Abonnement---------
--(RefRecette,Login)

insert into Abonnement values ('9','mamy');
insert into Abonnement values ('9','saror');
insert into Abonnement values ('8','Mmarti');


-------------tests pour la table qauntite---------
--(RefQauntite, RefRecette, RefIngridient, qauntite)  

insert into qauntite values ('1','1','3','4, 500g, 250g, 250 ml');
insert into qauntite values ('2','2','2','1 , 3, 50g, 2');
insert into qauntite values ('3','3','1','500g , 2kg, 1l, 500g ');


-------------tests pour la table type--------
--(RefType, RefIngridient, NomType, Regime)

insert into  type values ('1', '1','vege','pas de viande');
insert into  type values ('2','2','vege','pas de viande');
insert into  type values ('3','3','viande','trop grain');

-------------tests pour la table Planning---------
--(RefPlanning ,RefRecette,menu, jour )

insert into planning values ('1','2','salade, gratin',TO_DATE('2020/10/05', 'YYYY/MM/DD') );
insert into planning values ('2','1','cake',TO_DATE('2021/05/05', 'YYYY/MM/DD'));


-------------tests pour la table ArchivePlanning---------
--( idArchive, RefPlanning, menu, jour)

insert into ArchivePlanning values ('1','1','salade, gratin',TO_DATE('2020/10/05', 'YYYY/MM/DD'));
insert into ArchivePlanning values ('2','2','cake',TO_DATE('2021/05/05', 'YYYY/MM/DD'));

-------------tests pour la table ArchiveListe---------
--(RefArchive, RefListe, Liste)

insert into ArchiveListe values ('1','1','tomate');
insert into ArchiveListe values ('2','2','tomate, carote et olive');
insert into ArchiveListe values ('3','3','farine');


-------------tests pour la table Liste---------
--(RefListe, RefRecette, Login,RefIngridient,ingridient)

insert into liste values ('1','2','saror','2','tomate');
insert into liste values ('2','2','mamy','2','tomate, carote et olive');
insert into liste values ('3','1','mamy','1','farine');
