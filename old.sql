----------------------------------------------------------------------------
--      nom de la base : gourmand
--      écriture synthétique
--      police non proportionnelle
--      auteur : CERTA – Fabio Pasqualini
--------------------------------------------------------------------------

drop table ligne_commande cascade;
drop table commande cascade;
drop table client cascade;
drop table produit cascade;
drop table vendeur cascade;

create table client
     (
     code_c          integer primary key,
     nom             varchar(35),
     adresse         varchar(50),
     cp              char(5),
     ville           varchar(25),
     telephone       varchar(16)
     );

create table vendeur
     (
     code_v          integer primary key,
     nom             varchar(35),
     adresse         varchar(40),
     cp              char(5),
     ville           varchar(30),
     telephone       varchar(16)
     );

create table commande
     (
     numero          integer primary key,
     code_v          integer not null references vendeur(code_v),
     code_c          integer not null references client(code_c),
     date_livraison  date,
     date_commande   date,
     total_ht        numeric(9,2),
     total_tva       numeric(9,2),
     etat            char(1)
     );

create table produit
     (
     reference        char(4) primary key,
     designation      varchar(30),
     quantite         integer,
     descriptif       varchar(100),
     prix_unitaire_ht numeric(9,2),
     stock            integer,
     poids_piece      integer
     );

create table ligne_commande
     (
     numero           integer not null references commande(numero),
     numero_ligne     integer,
     reference        char(4) not null references produit(reference),
     quantite_demandee integer,
     primary key (numero, numero_ligne)
     );

insert into client (code_c,nom,adresse,cp,ville,telephone) values (17 , 'TARINAUX Lucien' , '12 rue de la Justice' , '51100' , 'REIMS' , '03.26.25.48.87');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (46 , 'MARTUSE' , '103 avenue Lear' , '51100' , 'REIMS' , '03.26.03.25.26');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (47 , 'RABIN Sandrine' , '21 rue de la Méditerranée' , '51100' , 'REIMS' , '03.26.14.15.25');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (48 , 'SILLARD Laurence' , '15 rue Pasentiers' , '51100' , 'REIMS' , '03.26.11.11.25');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (49 , 'COTOY Sylvie' , '12 rue des écus' , '51100' , 'REIMS' , '03.26.10.25.75');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (50 , 'HELLOU Bernard' , '21 rue de la Méditerranée' , '51100' , 'REIMS' , '03.26.12.25.42');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (51 , 'HENTION Martine' , '50 allée des bons enfants' , '51100' , 'REIMS' , '03.26.12.25.86');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (52 , 'SIBAT Evelyne' , '14 rue de la Baltique' , '51100' , 'REIMS' , '03.26.12.23.33');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (53 , 'MARIN Dominique' , '24 rue de la Baltique' , '51100' , 'REIMS' , '03.26.10.10.23');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (54 , 'DURDUX Monique' , '15 allée des Béarnais' , '51150' , 'VITRY LE FRANCOIS' , '03.26.42.42.33');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (55 , 'CANILLE Walter' , '14 rue Lanterneau' , '51100' , 'REIMS' , '03.26.12.12.87');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (56 , 'BOUQUET Antoinette' , '1 rue de la Méditerranée' , '51140' , 'ROMAIN' , '03.26.78.89.54');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (57 , 'GAUTON Nadine' , '5 place des Oiseaux' , '51200' , 'FISMES' , '03.26.53.56.55');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (58 , 'LEGROS Christian' , '18 place des Oiseaux' , '51200' , 'FISMES' , '03.26.44.55.66');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (59 , 'DUMOITIERS Lucille' , '12 place Centrale' , '02320' , 'LONGUEVAL' , '03.26.86.43.25');
insert into client (code_c,nom,adresse,cp,ville,telephone) values (60 , 'BOUCHE Carole' , '4,. rue Brulé' , '51200' , 'FISMES' , '03.26.33.96.85');

insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (1004 , 'FEU DE JOIE LIQUEUR ASSORT.' , 500 , 'G' , 23.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (1007 , 'TENDRE FRUIT' , 500 , 'G' , 18.00  , 120 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (1015 , 'CARACAO' , 500 , 'G' , 24.50  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (1016 , 'COKTAIL' , 500 , 'G' , 33.00  , 40 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (1017 , 'ORFIN' , 500 , 'G' , 32.00  , 40 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (3002 , 'CARRE PECTO' , 500 , 'G' , 29.00  , 40 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (3004 , 'ZAN ALESAN' , 25 , 'P' , 15.00  , 50 , 20);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (3010 , 'PATES GRISES' , 500 , 'G' , 35.00  , 100 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (3016 , 'CARAMEL AU LAIT' , 500 , 'G' , 20.00  , 100 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (3017 , 'VIOLETTE TRADITION' , 500 , 'G' , 25.00  , 100 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4002 , 'SUCETTE BOULE FRUIT' , 25 , 'P' , 14.00  , 100 , 40);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4004 , 'SUCETTE BOULE POP' , 25 , 'P' , 21.00  , 50 , 40);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4010 , 'CARAMBAR' , 40 , 'P' , 18.00  , 20 , 15);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4011 , 'CARANOUGA' , 40 , 'P' , 18.00  , 100 , 15);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4012 , 'CARAMBAR FRUIT' , 40 , 'P' , 18.00  , 100 , 15);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4013 , 'CARAMBAR COLA' , 40 , 'P' , 18.00  , 50 , 15);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4015 , 'SOURIS REGLISSE' , 500 , 'G' , 24.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4016 , 'SOURIS CHOCO' , 500 , 'G' , 24.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4019 , 'SCHTROUMPFS VERTS' , 500 , 'G' , 24.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4020 , 'CROCODILE' , 500 , 'G' , 21.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4022 , 'PERSICA' , 500 , 'G' , 28.00  , 20 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4025 , 'COLA CITRIQUE' , 500 , 'G' , 21.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4026 , 'COLA LISSE' , 500 , 'G' , 25.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4027 , 'BANANE' , 1000 , 'G' , 23.00  , 20 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4029 , 'OEUF SUR LE PLAT' , 500 , 'G' , 25.00  , 20 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4030 , 'FRAISIBUS' , 500 , 'G' , 25.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4031 , 'FRAISE TSOIN-TSOIN' , 500 , 'G' , 25.00  , 40 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4032 , 'METRE REGLISSE ROULE' , 500 , 'G' , 19.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4033 , 'MAXI COCOBAT' , 1000 , 'G' , 19.00  , 20 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4034 , 'DENTS VAMPIRE' , 500 , 'G' , 22.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4036 , 'LANGUE COLA CITRIQUE' , 500 , 'G' , 21.00  , 40 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4037 , 'OURSON CANDI' , 1000 , 'G' , 21.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4039 , 'SERPENT ACIDULE' , 500 , 'G' , 21.00  , 20 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4042 , 'TETINE CANDI' , 500 , 'G' , 20.00  , 40 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4045 , 'COLLIER PECCOS' , 15 , 'P' , 21.00  , 50 , 50);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4052 , 'TWIST ASSORTIS' , 500 , 'G' , 22.00  , 50 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4053 , 'OURSON GUIMAUVE' , 500 , 'G' , 35.00  , 10 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4054 , 'BOULE COCO MULER' , 500 , 'G' , 34.00  , 10 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4055 , 'COCOMALLOW' , 500 , 'G' , 33.00  , 10 , 0);
insert into produit (reference , designation , quantite , descriptif , prix_unitaire_ht , stock , poids_piece) values (4057 , 'CRIC-CRAC' , 500 , 'G' , 33.00  , 10 , 0);

insert into vendeur (code_v , nom , adresse , cp , ville , telephone) values ( 15 , 'FILLARD Sylvain' , '77 rue du l''Adriatique' , '51100' , 'REIMS' , '03.26.12.25.25');
insert into vendeur (code_v , nom , adresse , cp , ville , telephone) values (17 , 'BAUDOT Marc' , '16 rue de Reims' , '51000' , 'CHALONS EN CHAMPAGNE' , '03.26.10.58.59');

insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10178 , 15 , 47 , '05/09/2008' , '05/09/2008' , 177.00 , 9.75  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10179 , 15 , 47 , '13/10/2008' , '13/10/2008' , 192.00  , 10.50  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10180 , 15 , 48 , '10/10/2008' , '10/10/2008' , 98.00  , 5.40  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10181 , 15 , 49 , '11/10/2008' , '11/10/2008' , 175.00  , 9.60  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10182 , 15 , 50 , '11/10/2008' , '11/10/2008' , 116.00  , 6.40  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10183 , 15 , 51 , '11/10/2008' , '11/10/2008' , 118.00  , 6.50  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10184 , 15 , 52 , '12/10/2008' , '12/10/2008' , 102.00  , 5.60  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10185 , 15 , 53 , '12/10/2008' , '12/10/2008' , 19.00  , 1.05  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10186 , 15 , 54 , '10/10/2008' , '10/10/2008' , 101.00  , 5.55  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10187 , 15 , 55 , '10/10/2008' , '10/10/2008' , 65.00  , 3.58  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10188 , 17 , 56 , '12/10/2008' , '12/10/2008' , 121.00  , 6.66  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10189 , 17 , 57 , '10/10/2008' , '10/10/2008' , 110.00  , 6.05  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10190 , 17 , 58 , '13/10/2008' , '13/10/2008' , 123.00  , 6.76  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10191 , 17 , 59 , '13/10/2008' , '13/10/2008' , 107.50  , 5.91  , 1);
insert into commande (numero , code_v , code_c , date_livraison , date_commande , total_ht , total_tva , etat) values (10192 , 17 , 60 , '10/11/2008' , '10/11/2008' , 237.00  , 13.04  , 1);

insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10188 , 3 , 1004 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10179 , 7 , 1007 , 2);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10191 , 4 , 1015 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10191 , 1 , 1016 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10188 , 1 , 1016 , 2);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10186 , 1 , 1016 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10189 , 1 , 1017 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 3 , 1017 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10186 , 2 , 3002 , 2);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 9 , 3004 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 4 , 3016 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10190 , 1 , 3010 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10180 , 3 , 3016 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 6 , 3017 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10179 , 4 , 4002 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10185 , 1 , 4002 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10181 , 4 , 4002 , 2);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10184 , 3 , 4004 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10178 , 5 , 4004 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10187 , 2 , 4010 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10187 , 3 , 4011 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10182 , 2 , 4012 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10181 , 5 , 4012 , 2);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10183 , 5 , 4013 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10191 , 3 , 4013 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10178 , 1 , 4015 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10187 , 1 , 4015 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10190 , 2 , 4015 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10189 , 2 , 4016 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 10 , 4019 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10181 , 1 , 4020 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 7 , 4022 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10183 , 1 , 4025 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10178 , 2 , 4025 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 1 , 4025 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10184 , 1 , 4025 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10181 , 2 , 4026 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10183 , 2 , 4027 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10183 , 3 , 4029 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 2 , 4030 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10179 , 1 , 4031 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10178 , 3 , 4031 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10189 , 3 , 4031 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10184 , 2 , 4031 , 2);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 5 , 4031 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10179 , 2 , 4032 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10190 , 3 , 4032 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10189 , 4 , 4033 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10182 , 1 , 4034 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10178 , 4 , 4036 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10179 , 3 , 4037 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10183 , 4 , 4039 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10178 , 7 , 4042 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10181 , 3 , 4045 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10191 , 2 , 4052 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10192 , 8 , 4052 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10188 , 2 , 4052 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10178 , 6 , 4053 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10180 , 1 , 4053 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10190 , 4 , 4053 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10179 , 5 , 4054 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10181 , 6 , 4054 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10182 , 3 , 4055 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10180 , 2 , 4055 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10179 , 6 , 4057 , 1);
insert into ligne_commande (numero , numero_ligne , reference , quantite_demandee) values (10182 , 4 , 4057 , 1);


