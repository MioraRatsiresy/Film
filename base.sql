CREATE USER film with password 'film';

create database film;

DROP TABLE IF EXISTS Film CASCADE;
DROP TABLE IF EXISTS Administrateur CASCADE;
DROP TABLE IF EXISTS auteur CASCADE;
DROP TABLE IF EXISTS auteurfilm CASCADE;
DROP TABLE IF EXISTS vetement CASCADE;
DROP TABLE IF EXISTS plateau CASCADE;
DROP TABLE IF EXISTS sentiment CASCADE;
DROP TABLE IF EXISTS ton CASCADE;
DROP TABLE IF EXISTS expression CASCADE;
DROP TABLE IF EXISTS rolePersonnage CASCADE;
DROP TABLE IF EXISTS Personnage CASCADE;
DROP TABLE IF EXISTS Scene CASCADE;
DROP TABLE IF EXISTS actionScene CASCADE;
DROP TABLE IF EXISTS DetailsAction CASCADE;
DROP TABLE IF EXISTS Indisponibiliteplateau CASCADE;
DROP TABLE IF EXISTS JourFerie CASCADE;
DROP TABLE IF EXISTS Planning CASCADE;

create table Film(
	id serial primary key , 
	titre varchar(30),
	sary varchar(100),
	descriptionfilm text		
);

INSERT INTO Film values(default,'Bobby','photo.png','kaka');

create table Administrateur(
	id serial primary key,
	email varchar(20),
	motdeapasse varchar(20)

);
create table auteur(
	id serial primary key,
	nom varchar(30),
	prenom varchar(30),
	email varchar(20),
	motdeapasse varchar(20)
);

insert into auteur values (default,'Mitasoa','Celestin','mitasoa@gmail.com','zety');

create table auteurfilm(
	idfilm int references film(id),
	idauteur int references auteur(id)
);
insert into auteurfilm values (1,1);
	
	
create table vetement(
	id serial primary key,	
	vetement varchar(100)
	);

insert into vetement values (default,'Vetement de soiree');
insert into vetement values (default,'Vetement de funeraille');
insert into vetement values (default,'Vetement de cuisine');

	
create table plateau(

	id serial primary key, 
	plateau varchar(100)
);

insert into plateau values (default,'Cuisine');
insert into plateau values (default,'Garage');

create table sentiment(
	id serial primary key,
	sentiment varchar(50)
	);
	

create table ton(
	id serial primary key,
	ton varchar(50)
	);	
	
create table expression(
	id serial primary key,
	expression varchar(50)
	);	


	

create table rolePersonnage (
	id serial primary key,
	role varchar(50)
	);

insert into rolePersonnage values (default,'Principal');
insert into rolePersonnage values (default,'Secondaire');

	
	
create table Personnage(
	id serial primary key,
	nom varchar(50),
	prenom varchar(50),
	idRole int references rolePersonnage(id)
	);

INSERT INTO Personnage values(default,'Mbola','Liliane',1);
	

	
create table scene (
	id serial primary key,
	descriptionscene varchar(100),	
	idfilm int references film(id),
	idauteur int references auteur(id),
	idplateau int references plateau(id),
	etatscene int default 0  -- 0 crée 4 validé 6 planifie
	);
insert into scene values (default,'zety',1,1,1,0);
insert into scene values (default,'mikaka mitasoa',1,1,1,0);

CREATE VIEW SceneView as
SELECT Scene.*,auteur.nom,auteur.prenom,plateau.plateau from scene join auteur on auteur.id=scene.idauteur join plateau on plateau.id=scene.idplateau; 
	
create table actionScene(
	id serial primary key,
	descriptionaction varchar(100),	
	idscene int references scene(id)
);
insert into actionScene values (default,'mmmffmfm',1);
insert into actionScene values (default,'efeefefef',1);

create table DetailsAction(
	id serial primary key,
	idaction int references actionScene(id),
	idexpression int references expression(id),
	idsentiment int references sentiment(id),
	idton int references ton(id),
	durree time ,
	idpersonnage int references personnage(id),
	idvetement int references vetement(id),
	sketch text 	
);
insert into DetailsAction values (default,1,1,1,1,'00:05:00',1,1,'Coucou');

create table Indisponibiliteplateau(
	idplateau int not null,
	designation text,
	dateindisponibilite date
);

ALTER TABLE Indisponibiliteplateau ADD FOREIGN KEY(idplateau) REFERENCES plateau(id);

insert into Indisponibiliteplateau values (1,'Tournage','2023-03-22');

create table JourFerie(
	designation varchar(100),
	dateferie date
);
insert into JourFerie values ('Lundi de Paques','2023-04-10');

create table Planning(
	dateplanning date,
	heureplanning time,
	scene int
);

insert into  sentiment(sentiment) values('bonheur'), ('chagrin'), ('colère'), ('compassion'), ('crainte'),('dégoût'),('désespoir'), ('effroi'), ('ennui'),('envie'),('frayeur'), ('fureur'), ('gaieté'), ('haine'), ('honte'), ('jalousie'),('joie'), ('mélancolie'), ('mépris'), ('panique'), ('peine'), ('peur'), ('rage'), ('respect'), ('stupeur'), ('surprise'), ('terreur'), ('tristesse');

insert into expression(expression) values('sourire');
insert into expression(expression) values('froncement de sourcils');
insert into expression(expression) values ('haussement d''epaules');

insert into ton(ton) values ('Lamentable'),(' langoureux'), ('languissant'), ('larmoyant'), ('lasse'), ('leger'), ('lent'), ('leste'), ('lugubre'),('Magistral'), ('majestueux'), ('maniéré'), ('martial'), ('maussade'), ('méchant'), ('mélancolique'), ('mélodramatique'), ('menaçant'), ('méprisant'), ('mesuré'), ('mielleux'), ('militaire'), ('modere'), ('modeste'), ('monocorde'), ('monotone'), ('montant'), ('moqueur'), ('moralisateur'), ('mordant'), ('mourant');


CREATE VIEW SceneTournage as  select scene.*,coalesce(sum(durree),'00:00:00') as temps from scene left join actionscene on actionscene.idscene=scene.id left join detailsaction on detailsaction.idaction=actionscene.id group by scene.id;


--indisponibilite plateau
--jour ferie 
-- weekend non pris en compte:  EXTRACT(ISODOW FROM (datedebut+countjour))

--8 heurre
create or replace function planning(film int,datedebut date,datefin date)
returns table(
	dateplanning date,
	heureplanning time,
	scene int
)
language plpgsql
as
$$
  declare
  g record;
    begin
	 for g in (select * from SceneTournage where etatscene=4)
    loop

    end;	
$$;


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
