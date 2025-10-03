CREATE DATABASE escola_music;

USE escola_music;

CREATE TABLE Alunos(idAluno INT NOT NULL RPIMARY KEYAUTO_INCREMENT, alunoNome VARCHAR(30) NOT NULL, idCurso INT NOT NULL);

CREATE TABLE Cursos(idCurso INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nomeCurso VARCHAR(25) NOT NULL, duracao INT NOT NULL, idInstrumento INT);

CREATE TABLE Professores(idProf INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nomeProf VARCHAR(30) NOT NULL, idInsturmento INT NOT NULL);

CREATE TABLE Instrumentos(idInstrumento INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nomeInst VARCHAR(30), genero VARCHAR(20));

CREATE TABLE Aulas(idAula INT NOT NULL PRIMARY KEY AUTO_INCREMENT, idAluno INT NOT NULL, idProf INT NOT NULL, Sala INT NOT NULL);


ALTER TABLE Alunos ADD FOREIGN KEY (idCurso) REFERENCES Cursos(idCurso);
ALTER TABLE Professores ADD FOREIGN KEY (idInsturmento) REFERENCES Instrumentos(idInstrumento);
ALTER TABLE Instrumentos ADD FOREIGN KEY (idAluno) REFERENCES Alunos(idAluno);
ALTER TABLE Cursos ADD FOREIGN KEY (idInstrumento) REFERENCES Instrumentos(idInstrumento);
ALTER TABLE Instrumentos ADD FOREIGN KEY (idProf) REFERENCES Professores(idProf);
ALTER TABLE Aulas ADD FOREIGN KEY (idAluno) REFERENCES Alunos(idAluno);
ALTER TABLE Aulas ADD FOREIGN KEY (idProf) REFERENCES Professores(idProf);

--mudar no drawio