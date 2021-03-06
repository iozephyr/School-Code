CREATE TABLE Class
(
    class_id       int unsigned    NOT NULL     AUTO_INCREMENT,
    class_name     char(50)        NOT NULL,
    PRIMARY KEY (class_id)
) ENGINE=InnoDB;

CREATE TABLE Sports
(
    sports_id       int unsigned    NOT NULL    AUTO_INCREMENT,
    sports_name     char(50)        NOT NULL,
    referee_id      int unsigned    NOT NULL,
    num_athletes    tinyint unsigned    NOT NULL,
    PRIMARY KEY (sports_id)
) ENGINE=InnoDB;

CREATE TABLE Athletes
(
    athletes_id     int unsigned    NOT NULL    AUTO_INCREMENT,
    athletes_name   char(50)        NOT NULL,
    athletes_sex    char(5),
    athletes_age    tinyint unsigned,
    class_id        int unsigned    NOT NULL,
    PRIMARY KEY (athletes_id)
) ENGINE=InnoDB;

CREATE TABLE Referee
(
    referee_id      int unsigned    NOT NULL    AUTO_INCREMENT,
    referee_name    char(50)        NOT NULL,
    PRIMARY KEY (referee_id)
) ENGINE=InnoDB;

CREATE TABLE Score
(
    sports_id       int unsigned    NOT NULL,
    athletes_id     int unsigned    NOT NULL,
    score           int unsigned    NULL,
    PRIMARY KEY (sports_id, athletes_id)
) ENGINE=InnoDB;