--creation 

create table UTILISATEUR 
(
    login varchar2(30) NOT NULL,
    adr_email varchar2(100) NOT NULL,
    mot_de_passe varchar2(30) NOT NULL,
    CONSTRAINT PK_utilisateur PRIMARY KEY (login)
);

create table RECETTE 
(
    idRecette number(10) NOT NULL,
    nomRecette varchar2(50) NOT NULL,
    descriptif varchar2(200),
    difficulte varchar2(14) NOT NULL, --- add the constraint to "Very easy" to "Hard"
    prix number(1) NOT NULL,--add constraint on 1 to 5 difficulty
    illustration varchar(150), --link on web pages with pictures or videos
    auteur varchar2(30) NOT NULL , --ask professor to anonymous author or not
    nbr_personne number(2) NOT NULL, -- 99 max, ask professor for the max person
    CONSTRAINT PK_RECETTE PRIMARY KEY (idRecette)
);

create table ETAPE
(
    idEtape number(10) NOT NULL,
    nomEtape varchar(50) NOT NULL,
    temps_cuisson number(2),
    temps_preparation number(2),
    descriptif_etape varchar2(200),
    CONSTRAINT PK_ETAPE PRIMARY KEY (idEtape)
);

create table LISTE_ETAPES
(
    idRecette number(10) NOT NULL,
    idEtape number(10) NOT NULL,
    CONSTRAINT FK_L_ETAPES_rec FOREIGN KEY (idRecette) REFERENCES RECETTE,
    CONSTRAINT FK_L_ETAPES_etape FOREIGN KEY (idEtape) REFERENCES ETAPE
);

create table PLANNING
(
    idPlanning number(10) NOT NULL,
    idRecette number(10) NOT NULL,
    login varchar2(30) NOT NULL,
    date_menu timestamp,
    CONSTRAINT PK_PLANNING PRIMARY KEY (idPlanning),
    CONSTRAINT FK_PLANNING_rec FOREIGN KEY (idRecette) REFERENCES RECETTE,
    CONSTRAINT FK_PLANNING_log FOREIGN KEY (login) REFERENCES UTILISATEUR
);

create table INGREDIENT
(
    idIngredient number(10) NOT NULL,
    nomIndredient varchar2(20) NOT NULL,
    CONSTRAINT PK_INGREDIENT PRIMARY KEY (idIngredient)
);

create table QUANTITE 
(
    idIngredient number(10) NOT NULL,
    nombre number(2) NOT NULL,
    mesure varchar2(30) NOT NULL , --check unity or kg/g
    nbr_calories number(4) NOT NULL,
    nbr_glucides number(4) NOT NULL,
    nbr_lipides number(4) NOT NULL,
    nbr_protides number(4) NOT NULL,
    CONSTRAINT FK_QUANTITE_ing FOREIGN KEY (idIngredient) REFERENCES INGREDIENT
);

create table TYPE
(
    idIngredient number(10) NOT NULL,
    NomType varchar2(10) NOT NULL, --check on different type (meat,fish)
    Regime varchar(15) NOT NULL, --check on different regime(veggie, vegan , all regimes,etc)
                                -- or not good ingredient for veggie person
    CONSTRAINT FK_TYPE_ing FOREIGN KEY (idIngredient) REFERENCES INGREDIENT
    -- it's possible to add a pk on idIngredient (but not possible to correspond to 
        -- uncompatibility with different regimes: example : not for veggie and not for vegan)
);

create table LISTE_INGREDIENTS
(
    idRecette number(10) NOT NULL,
    idIngredient number(10) NOT NULL,
    CONSTRAINT FK_L_ING_rec FOREIGN KEY (idRecette) REFERENCES RECETTE,
    CONSTRAINT FK_L_ING_ing FOREIGN KEY (idIngredient) REFERENCES INGREDIENT
);


create table LISTE_ACHATS 
(
    id_L_achats number(10) NOT NULL,
    login varchar2(30) NOT NULL,
    idIngredient number(10) NOt NULL,
    date_achats timestamp NOT NULL,
    CONSTRAINT PK_L_ACHATS PRIMARY KEY (id_L_achats),
    CONSTRAINT FK_L_ACH_log FOREIGN KEY (login) REFERENCES UTILISATEUR,
    CONSTRAINT FK_L_ACH_ing FOREIGN KEY (idIngredient) REFERENCES INGREDIENT
);


create table ARCHIVES_PLANNING
(
    idArchive_Planning number(10) NOT NULL,
    idRecette number(10) NOT NULL,
    idPlanning number(10) NOT NULL,
    date_menu timestamp,
    login varchar2(30) NOT NULL,
    CONSTRAINT PK_ARCH_PLA_arch PRIMARY KEY (idArchive_Planning),
    CONSTRAINT FK_ARCH_PLA_pla FOREIGN KEY (idPlanning) REFERENCES PLANNING
);


create table ARCHIVES_ACHATS
(
    idArchive_Achats number(10) NOT NULL,
    id_L_achats number(10) NOT NULL,
    date_achats timestamp,
    idIngredient number(10) NOT NULL,
    login varchar2(30),
    CONSTRAINT PK_ARCH_ACH_arch PRIMARY KEY (idArchive_Achats),
    CONSTRAINT FK_ARCH_ACH_l_ach FOREIGN KEY (id_L_achats) REFERENCES LISTE_ACHATS
);



