-- insert test 
-- UTILISATEUR
INSERT INTO UTILISATEUR VALUES ('cspitz','adr@mail.com','mdp');
-- RECETTE
INSERT INTO RECETTE VALUES (1,'cake sucre',NULL,'Very easy',2,NULL,'chris',1);
-- ETAPE
INSERT INTO ETAPE VALUES (1,'etape 1',0,0,'sortir les aliments du frigo');
-- LISTE_ETAPES
INSERT INTO LISTE_ETAPES VALUES (1,1); -- fonctionne //logique
INSERT INTO LISTE_ETAPES VALUES (1,2); -- echoue // pas d'étape 2 créee dans la table ETAPE
INSERT INTO LISTE_ETAPES VALUES (2,1); -- echoue // pas de recette n°2 creée dans la table RECETTE
-- PLANNING
INSERT INTO PLANNING VALUES (1,1,'cspitz',TO_DATE('16-11-2021','DD-MM-YYYY')); -- same of top L_E
-- INGREDIENT
INSERT INTO INGREDIENT VALUES (1,'carotte');
-- QUANTITE
INSERT INTO QUANTITE VALUES (1,2,'unity',20,30,40,50);
-- TYPE
-- doute sur cette table (ses clés)
INSERT INTO TYPE VALUES (1,'legume','vegetarien'); -- fonctionne
INSERT INTO TYPE VALUES (1,'legume','vegan'); -- fonctionne 
-- LISTE_INGREDIENTS
INSERT INTO LISTE_INGREDIENTS VALUES (1,1); -- same of LISTE_ETAPES
INSERT INTO LISTE_INGREDIENTS VALUES (1,2); -- same of LISTE_ETAPES
INSERT INTO LISTE_INGREDIENTS VALUES (2,1); -- same of LISTE_ETAPES
-- LISTE_ACHATS
INSERT INTO LISTE_ACHATS VALUES (1,'cspitz',1,TO_DATE('15-11-2021','DD-MM-YYYY')); -- same of LISTE_ETAPES
INSERT INTO LISTE_ACHATS VALUES (2,'cspitz',2,TO_DATE('15-11-2021','DD-MM-YYYY')); -- same of LISTE_ETAPES
INSERT INTO LISTE_ACHATS VALUES (3,'cspitz',1,TO_DATE('15-11-2021','DD-MM-YYYY')); -- fonctionne
-- ARCHIVES_PLANNING
INSERT INTO ARCHIVES_PLANNING VALUES (1,1,1,TO_DATE('16-11-2021','DD-MM-YYYY'),'cspitz');
-- ARCHIVES_ACHATS
INSERT INTO ARCHIVES_ACHATS VALUES (1,1,TO_DATE('15-11-2021','DD-MM-YYYY'),1,'cspitz');


-- Reste à faire les tests d'absurdité sur les archives (absurdité = date antérieur (CHECK partie 2))
-- Ainsi que les tests avec diverses requêtes pour obtenir un résultat cohérent










