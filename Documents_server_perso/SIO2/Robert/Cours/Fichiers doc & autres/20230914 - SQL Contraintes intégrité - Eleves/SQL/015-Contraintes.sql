
ALTER TABLE SOFTWARE.DEVELOPPEUR
ADD CONSTRAINT  DEV_ID_DEVELOPPEUR 
PRIMARY KEY (ID_DEVELOPPEUR) ;
GO


ALTER TABLE SOFTWARE.JEUX
ADD CONSTRAINT  JEU_ID_JEU 
PRIMARY KEY (ID_JEU) ;
GO



ALTER TABLE SOFTWARE.MAGASIN
ADD CONSTRAINT  MAG_ID_MAGASIN 
PRIMARY KEY (ID_MAGASIN) ;
GO
ALTER TABLE SOFTWARE.MAGASIN
ADD CONSTRAINT  MAG_FK_ID_MAGASIN 
FOREIGN KEY (ID_MAGASIN) 
REFERENCES 
SOFTWARE.REF_LIB_MAGASIN (ID_MAGASIN);
GO
ALTER TABLE SOFTWARE.MAGASIN
ADD CONSTRAINT  MAG_FK_ID_CHAINE 
FOREIGN KEY (ID_CHAINE) 
REFERENCES 
SOFTWARE.REF_LIB_CHAINE (ID_CHAINE);
GO
ALTER TABLE SOFTWARE.MAGASIN
ADD CONSTRAINT  MAG_FK_ID_RESPONSABLE 
FOREIGN KEY (ID_RESPONSABLE) 
REFERENCES 
SOFTWARE.REF_LIB_EMPLOYE (ID_EMPLOYE);
GO

ALTER TABLE SOFTWARE.PAYS
ALTER COLUMN ID_PAYS INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.PAYS
ADD CONSTRAINT  PAYS_ID_PAYS 
PRIMARY KEY (ID_PAYS) ;

ALTER TABLE SOFTWARE.PAYS
ADD CONSTRAINT  PAYS_FK_ID_PAYS 
FOREIGN KEY  (ID_PAYS) 
REFERENCES SOFTWARE.REF_LIB_PAYS (ID_PAYS);
GO
ALTER TABLE SOFTWARE.PAYS
ADD CONSTRAINT  PAYS_FK_ID_REGION 
FOREIGN KEY  (ID_REGION) 
REFERENCES SOFTWARE.REF_LIB_REGION (ID_REGION);
GO
ALTER TABLE SOFTWARE.REF_LIB_CHAINE
ALTER COLUMN ID_CHAINE INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.REF_LIB_CHAINE
ADD CONSTRAINT  PAYS_ID_CHAINE 
PRIMARY KEY (ID_CHAINE) ;

ALTER TABLE SOFTWARE.REF_LIB_DEVELOPPEUR
ALTER COLUMN ID_DEVELOPPEUR INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.REF_LIB_DEVELOPPEUR
ADD CONSTRAINT  REF_ID_DEVELOPPEUR 
PRIMARY KEY (ID_DEVELOPPEUR) ;
GO
ALTER TABLE SOFTWARE.REF_LIB_EDITEUR
ALTER COLUMN ID_EDITEUR INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.REF_LIB_EDITEUR
ADD CONSTRAINT  REF_ID_EDITEUR 
PRIMARY KEY (ID_EDITEUR) ;
GO
ALTER TABLE SOFTWARE.REF_LIB_EMPLOYE
ALTER COLUMN ID_EMPLOYE INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.REF_LIB_EMPLOYE
ADD CONSTRAINT  REF_ID_EMPLOYE 
PRIMARY KEY (ID_EMPLOYE) ;
GO
ALTER TABLE SOFTWARE.REF_LIB_EMPLOYE
ADD CONSTRAINT  REF__FK_ID_EMPLOYE 
FOREIGN KEY (ID_RESPONSABLE) 
REFERENCES SOFTWARE.REF_LIB_EMPLOYE
(ID_EMPLOYE) ;
GO
ALTER TABLE SOFTWARE.REF_LIB_JEUX
ALTER COLUMN ID_JEU INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.REF_LIB_JEUX
ADD CONSTRAINT  REF_ID_JEU 
PRIMARY KEY (ID_JEU) ;
GO
ALTER TABLE SOFTWARE.REF_LIB_MAGASIN
ALTER COLUMN ID_MAGASIN INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.REF_LIB_MAGASIN
ADD CONSTRAINT  REF_ID_MAGASIN 
PRIMARY KEY (ID_MAGASIN) ;
GO
ALTER TABLE SOFTWARE.REF_LIB_PAYS
ALTER COLUMN ID_PAYS INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.REF_LIB_PAYS
ADD CONSTRAINT  REF_ID_PAYS 
PRIMARY KEY (ID_PAYS) ;
GO
ALTER TABLE SOFTWARE.REF_LIB_REGION
ALTER COLUMN ID_REGION INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.REF_LIB_REGION
ADD CONSTRAINT  REF_ID_REGION 
PRIMARY KEY (ID_REGION) ;
GO
ALTER TABLE SOFTWARE.VENTES
ALTER COLUMN ID_TRANSACTION INT NOT NULL ;
GO
ALTER TABLE SOFTWARE.VENTES
ADD CONSTRAINT  ID_TRANSACTION 
PRIMARY KEY (ID_TRANSACTION) ;
GO
ALTER TABLE SOFTWARE.VENTES
ADD CONSTRAINT  FK_ID_MAGASIN 
FOREIGN KEY (ID_MAGASIN)
REFERENCES SOFTWARE.REF_LIB_MAGASIN
(ID_MAGASIN);
GO
ALTER TABLE SOFTWARE.VENTES
ADD CONSTRAINT  FK_ID_JEU 
FOREIGN KEY (ID_JEU)
REFERENCES SOFTWARE.REF_LIB_JEUX
(ID_JEU);
GO
ALTER TABLE SOFTWARE.VENTES
ADD CONSTRAINT  FK_ID_VENDEUR 
FOREIGN KEY (ID_VENDEUR)
REFERENCES SOFTWARE.REF_LIB_EMPLOYE
(ID_EMPLOYE);

