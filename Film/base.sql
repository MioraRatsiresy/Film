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

create table Film(
	id serial primary key , 
	titre varchar(30),
	sary varchar(100),
	descriptionfilm text		
);


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


create table auteurfilm(
	id serial primary key,
	idfilm int references film(id),
	idauteur int references auteur(id));
	
	
create table vetement(
	id serial primary key,	
	vetement varchar(100)
	);
	
create table plateau(

	id serial primary key, 
	plateau varchar(100)
);

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
	
	
create table Personnage(
	id serial primary key,
	nom varchar(50),
	prenom varchar(50),
	idRole int references rolePersonnage(id)
	);
	

	
create table scene (
	id serial primary key,
	descriptionscene varchar(100),	
	idfilm int references film(id),
	idauteur int references auteur(id),
	idplateau int references plateau(id)
	);


CREATE VIEW SceneView as
SELECT Scene.*,auteur.nom,auteur.prenom,plateau.plateau from scene join auteur on auteur.id=scene.idauteur join plateau on plateau.id=scene.idplateau; 
	
create table actionScene(
	id serial primary key,
	descriptionaction varchar(100),	
	idscene int references scene(id)
);

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


insert into  sentiment(sentiment) values('bonheur'), ('chagrin'), ('col??re'), ('compassion'), ('crainte'),('d??go??t'),('d??sespoir'), ('effroi'), ('ennui'),('envie'),('frayeur'), ('fureur'), ('gaiet??'), ('haine'), ('honte'), ('jalousie'),('joie'), ('m??lancolie'), ('m??pris'), ('panique'), ('peine'), ('peur'), ('rage'), ('respect'), ('stupeur'), ('surprise'), ('terreur'), ('tristesse');

-- insert into expression(expression) values(''),(

insert into ton(ton) values ('Lamentable'),(' langoureux'), ('languissant'), ('larmoyant'), ('lasse'), ('leger'), ('lent'), ('leste'), ('lugubre'),('Magistral'), ('majestueux'), ('mani??r??'), ('martial'), ('maussade'), ('m??chant'), ('m??lancolique'), ('m??lodramatique'), ('mena??ant'), ('m??prisant'), ('mesur??'), ('mielleux'), ('militaire'), ('modere'), ('modeste'), ('monocorde'), ('monotone'), ('montant'), ('moqueur'), ('moralisateur'), ('mordant'), ('mourant');

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
