DROP TABLE IF EXISTS lignecommande ;
DROP TABLE IF EXISTS commande ;
DROP TABLE IF EXISTS client ;
DROP TABLE IF EXISTS produit ;
DROP TABLE IF EXISTS bonbonpoids ;
DROP TABLE IF EXISTS bonbonpiece ;
DROP TABLE IF EXISTS gateaupoids ;
create table client 
(
	idclient int not null,
	nom varchar(20),
	prenom varchar(20),
	adresse varchar(100),
	cp int,
	ville varchar(30),
	tel int,
	primary key (idclient)
)ENGINE=InnoDB;

create table produit
(
	idproduit int not null,
	designation varchar(20),
	prixht int,
	stock int,
	primary key (idproduit)
)ENGINE=InnoDB;

create table bonbonpiece
(
	idproduit int not null,
	nombrepiece int,
	poidsapppiece int,
	primary key (idproduit)
)ENGINE=InnoDB;

create table bonbonpoids
(
	idproduit int not null,
	poids int,
	primary key (idproduit)
)ENGINE=InnoDB;

create table gateaupoids
(
	idproduit int not null,
	Poids int,
	dateperemption date,
	primary key (idproduit)
)ENGINE=InnoDB;

create table commande
(
	idc int,
	datecreation date,
	etat varchar(1),
	idclient int,
	primary key (idc)
)ENGINE=InnoDB;

create table lignecommande
(
	idlc int not null,
	idc int not null,
	quantite int,
	pourcentageremise int,
	idproduit int,
	primary key (idlc,idc)
)ENGINE=InnoDB;

	
