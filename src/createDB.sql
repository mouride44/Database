create table habitant(
   identite varchar(13) check ((value like ('M%')) or  (value like( 'F%')) and (length(identite)=13)) ,
   primary key(identite),
   nom varchar(15)  NOT NULL,
   prenom varchar(15) NOT NULL,
   specialite varchar(15) ,
   quartier varchar(15) ,
   voie varchar(15),
   numerovoie int ,
   statut  ENUM('combattant', 'non combattant','ancien combattant'),
   FOREIGN KEY (quartier) references quartier(nomQ)
   )
   ENGINE=innoDB; 
create table quartier (
   nomQ varchar(15) primary key,
   distanceC decimal(4,2)  NOT NULL,
   couleur1 ENUM ('blanc','noir','gris','rouge','rose','violet','jaune','vert','marron','bleu','mauve'),
   couleur2 ENUM ('blanc','noir','gris','rouge','rose','violet','jaune','vert','marron','bleu','mauve') ,
   couleur3 ENUM ('blanc','noir','gris','rouge','rose','violet','jaune','vert','marron','bleu','mauve'),
   unique (couleur1,couleur2,couleur3)
     )
   ENGINE=innoDB;
   
create table combat (
      nomC varchar(25) NOT NULL,
      dat date NOT NULL, 
      lieu varchar(15),
      primary key (nomC)
      )
      ENGINE=innoDB;
create table participe (
        habitant varchar(15) NOT NULL,
        combat varchar(15) NOT NULL,
        primary key (habitant,combat),
        FOREIGN KEY (combat) references combat(nomC),
        FOREIGN KEY (habitant) references habitant(identite)
        
         )
       ENGINE=innoDB;
        
create table casque (

      numero int not null AUTO_INCREMENT,
      primary key(numero),
      categories varchar(15) NOT NULL,
      disponibilite ENUM ('detenu','en service'),
      etat ENUM('bon', 'mauvais','moyen'),
      habitant varchar(15) not null,
      combat varchar(15) not null,
      nbCasque int not null,
      forme varchar(15),
      FOREIGN KEY (habitant) references habitant(identite),
      FOREIGN KEY (combat) references combat(nomC),
      FOREIGN KEY (forme) references equival(forme)

   
     )
   ENGINE=innoDB;

create table equival(
             forme varchar(25) not null ,
             grade varchar(25) not null,
             primary key(forme)
             )
      ENGINE=innoDB;




