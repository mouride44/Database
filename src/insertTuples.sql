
/*habitant*/
insert into habitant(identite, nom, prenom, specialite,quartier, voie, numerovoie,statut)
            values('M8726DATOU001','diao','ibrahima','chef','touba','wantzenau',14,'combattant');
insert into habitant(identite, nom, prenom, specialite,quartier, voie, numerovoie,statut)
            values('F9019BUDA002','modou','samb','juge','parcelles','darou',35,'non combattant');
insert into habitant(identite, nom, prenom, specialite,quartier, voie, numerovoie,statut)
            values('M9019BUDA003','saliou','ndour','porteur du chef','mbacke','impasse',12,'combattant');
insert into habitant(identite, nom, prenom, specialite,quartier, voie, numerovoie,statut)
            values('M4919BUMB004','pierre','moul','messager','mbour','deggo',12,'ancien combattant');
insert into habitant(identite, nom, prenom, specialite,quartier, voie, numerovoie,statut)
            values('F8925BUDA005','sabrina','sarr','guetteur','darou','corniche',12,'non combattant');


/*quartier*/
insert into quartier (nomQ,distanceC,couleur1,couleur2,couleur3)
            values ('touba','12,2','jaune','jaune','jaune');
insert into quartier (nomQ,distanceC,couleur1,couleur2,couleur3)
            values ('parcelles','0.5','gris','blanc','noir');
insert into quartier (nomQ,distanceC,couleur1,couleur2,couleur3)
            values ('mbour','0.9','bleu','rouge','marron');
insert into quartier (nomQ,distanceC,couleur1,couleur2,couleur3)
            values ('darou','0.7','bleu','rouge','bleu')
insert into quartier (nomQ,distanceC,couleur1,couleur2,couleur3)
            values ('mbacke','10','bleu','noir','bleu');

/*combat*/


insert into combat (nomC,dat,lieu)
           values  ('combat de dekhele','1999-05-12','rome');
insert into combat (nomC,dat,lieu)
           values  ('combat de somme','1987-05-05','marseille');
insert into combat (nomC,dat,lieu)
           values  ('bataille de danki','2010-04-02','turc');
insert into combat (nomC,dat,lieu)
           values  ('bataille mboul','1965-10-02','baol');
insert into combat (nomC,dat,lieu)
           values  ('gladiator','1985-10-03','persie');


/*participe*/


   
insert into participe (habitant, combat)
            values ('M8726DATOU001','gladiator');

insert into participe (habitant, combat)
            values ('M8726DATOU001','bataille mboul');
insert into participe (habitant, combat)
            values ('M9019BUDA003','combat de somme');


/*
 mysql -u root -p

/*casque*/

insert into casque (categories,disponibilite,etat,habitant,combat,nbCasque,forme)
            values('pointe','detenu','bon','M9019BUDA003','bataille mboul',1,'bonnet');
insert into casque (categories,disponibilite,etat,habitant,combat,nbCasque,forme)
            values(' soldat','en service','mauvais','M8726DATOU001','combat de somme',4,'berru');
insert into casque (categories,disponibilite,etat,habitant,combat,nbCasque,forme)
            values('chef','en service','moyen','M9019BUDA003','gladiator',1,'agris');


/*casque*/

insert into equival (forme,grade)
            values('bonnet','chef');
insert into equival(forme,grade)
       values('berru','soldat');
insert into equival(forme,grade)
       values('alesia','chef');
insert into equival(forme,grade)
       values('agris','soldat');


