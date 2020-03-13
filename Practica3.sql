ALTER TABLE Alumnos
ADD CONSTRAINT UC_Alumnos_Matricula UNIQUE(Matricula);

ALTER TABLE Alumnos
ADD CONSTRAINT FK_Alumnos_Materias FOREIGN KEY (IdMaterias)
REFERENCES Materias(Id)

ALTER TABLE Materias
ADD CONSTRAINT FK_Materias_Carrera FOREIGN KEY (IdCarrera)
REFERENCES Carrera(Id)

ALTER TABLE Carrera
ADD CONSTRAINT FK_Carrera_Facultad FOREIGN KEY (IdFacultad)
REFERENCES Facultad(Id)

ALTER TABLE Facultad
ADD CONSTRAINT FK_Facultad_Campus FOREIGN KEY (IdCampus)
REFERENCES Campus(Id)





































