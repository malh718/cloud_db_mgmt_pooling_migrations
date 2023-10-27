CREATE TABLE alembic_version (
    version_num VARCHAR(32) NOT NULL, 
    CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num)
);

-- Running upgrade  -> 683be09231b9

DROP TABLE `Patients2`;

DROP TABLE `Doctors`;

DROP TABLE `Doctors2`;

DROP TABLE `Patients`;

INSERT INTO alembic_version (version_num) VALUES ('683be09231b9');

-- Running upgrade 683be09231b9 -> 99ba7412313e

DROP TABLE `Patients`;

DROP TABLE `Doctors2`;

DROP TABLE `Doctors`;

UPDATE alembic_version SET version_num='99ba7412313e' WHERE alembic_version.version_num = '683be09231b9';

-- Running upgrade 99ba7412313e -> 9e48d6909c4d

ALTER TABLE patients ADD COLUMN is_alive VARCHAR(50) NOT NULL;

UPDATE alembic_version SET version_num='9e48d6909c4d' WHERE alembic_version.version_num = '99ba7412313e';

