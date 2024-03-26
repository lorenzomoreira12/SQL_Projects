CREATE DATABASE faculdade;

USE faculdade;

CREATE TABLE aluno
  (
     idaluno   INT NOT NULL,
     matricula VARCHAR(10) NOT NULL,
     nome      VARCHAR(50) NOT NULL,
     PRIMARY KEY (idaluno)
  );

CREATE TABLE alunocurso
  (
     idaluno    INT NOT NULL,
     idcurso    INT NOT NULL,
     anoentrada INT NOT NULL,
     FOREIGN KEY (idcurso) REFERENCES aluno(idaluno)
  );

CREATE TABLE curso
  (
     idcurso INT NOT NULL,
     nome    VARCHAR(50) NOT NULL,
     FOREIGN KEY (idcurso) REFERENCES alunocurso(idcurso)
  );

CREATE TABLE grade
  (
     idgrade           INT NOT NULL,
     idcurso           INT NOT NULL,
     ano               INT NOT NULL,
     cargahorariatotal INT NOT NULL,
     PRIMARY KEY(idgrade),
     FOREIGN KEY(idcurso) REFERENCES alunocurso(idcurso)
  );

CREATE TABLE disciplina
  (
     iddisciplina INT NOT NULL,
     nome         VARCHAR(50) NOT NULL,
     cargahoraria INT NOT NULL,
     PRIMARY KEY (iddisciplina)
  );

CREATE TABLE gradedisciplina
  (
     idgrade      INT NOT NULL,
     iddisciplina INT NOT NULL,
     FOREIGN KEY (idgrade) REFERENCES grade(idgrade),
     FOREIGN KEY (iddisciplina) REFERENCES disciplina(iddisciplina)
  );

CREATE TABLE historico
  (
     idaluno       INT NOT NULL,
     iddisciplina  INT NOT NULL,
     nota          FLOAT NOT NULL,
     datahistorico DATE,
     FOREIGN KEY (idaluno) REFERENCES aluno(idaluno),
     FOREIGN KEY (iddisciplina) REFERENCES disciplina(iddisciplina)
  ); 

-- então foram inseridos os dados para popular as tabelas --
