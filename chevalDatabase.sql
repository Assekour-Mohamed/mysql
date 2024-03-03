create database chevo
use chevo;
CREATE TABLE Personne (
    numPers INT,
    nomPers VARCHAR(45),
    telephonePers VARCHAR(45),
    adressePers VARCHAR(45),
    fonctionPers VARCHAR(45),
    numPersSup INT,
    PRIMARY KEY (numPers)
);

CREATE TABLE Proprietaire (
    numPers INT,
    numCheval INT,
    DateAchat DATE,
    prixAchat DOUBLE,
    PRIMARY KEY (numPers, numCheval, DateAchat, prixAchat),
    FOREIGN KEY (numPers) REFERENCES Personne(numPers)
);

CREATE TABLE Race (
    nomRace VARCHAR(20),
    poidsType DOUBLE,
    tailleType DOUBLE,
    PRIMARY KEY (nomRace)
);

CREATE TABLE Cheval (
    numCheval INT,
    nomCheval VARCHAR(45),
    numTatouage VARCHAR(45),
    couleurCheval VARCHAR(45),
    numChevalPere INT,
    numChevalMere INT,
    numPersEleveur INT,
    nomRace VARCHAR(20),
    PRIMARY KEY (numCheval),
    FOREIGN KEY (numChevalPere) REFERENCES Cheval(numCheval),
    FOREIGN KEY (numChevalMere) REFERENCES Cheval(numCheval),
    FOREIGN KEY (numPersEleveur) REFERENCES Personne(numPers),
    FOREIGN KEY (nomRace) REFERENCES Race(nomRace)
);

CREATE TABLE Concours (
    libelleConcours VARCHAR(40),
    AnneeConcours INT,
    NbrParticipants INT,
    PRIMARY KEY (libelleConcours, AnneeConcours)
);

CREATE TABLE Croissance (
    Mois INT,
    tailleMois VARCHAR(45),
    poidsMois VARCHAR(45),
    numCheval INT,
    PRIMARY KEY (Mois),
    FOREIGN KEY (numCheval) REFERENCES Cheval(numCheval)
);

CREATE TABLE ParticipationConcours (
    Cheval_numCheval INT,
    Concours_libelleConcours VARCHAR(40),
    Concours_AnneeConcours INT,
    Place VARCHAR(45),
    PRIMARY KEY (Cheval_numCheval, Concours_libelleConcours, Concours_AnneeConcours),
    FOREIGN KEY (Cheval_numCheval) REFERENCES Cheval(numCheval),
    FOREIGN KEY (Concours_libelleConcours, Concours_AnneeConcours) REFERENCES Concours(libelleConcours, AnneeConcours)
);
