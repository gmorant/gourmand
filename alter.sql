
ALTER TABLE commande
ADD CONSTRAINT FK_c_i 
FOREIGN KEY (idclient) REFERENCES client(idclient);

ALTER TABLE lignecommande
ADD CONSTRAINT FK_lc_id 
FOREIGN KEY (idc) REFERENCES commande(idc);


ALTER TABLE lignecommande
ADD CONSTRAINT FK_lc_ref 
FOREIGN KEY (idproduit ) REFERENCES produit(idproduit);

ALTER TABLE bonbonpoids
ADD CONSTRAINT FK_b_idp 
FOREIGN KEY (idproduit) REFERENCES produit(idproduit);

ALTER TABLE bonbonpiece
ADD CONSTRAINT FK_bp_idp2 
FOREIGN KEY (idproduit) REFERENCES produit(idproduit);


ALTER TABLE gateaupoids
ADD CONSTRAINT FK_gp_idp3 
FOREIGN KEY (idproduit) REFERENCES produit(idproduit);
