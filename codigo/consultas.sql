select * from cursos;

----------------------------------------------------------

select * from instrumentos where genero="Percussão";

----------------------------------------------------------

select alunos.alunoNome, instrumentos.nomeInst, professores.nomeProf from cursos
join alunos on alunos.idCurso =cursos.idCurso
join professores on professores.idInsturmento = cursos.idinstrumento
join instrumentos on instrumentos.idinstrumento = cursos.idinstrumento;

----------------------------------------------------------
select count(*) from instrumentos;

 select sum(duracao) from cursos;

select avg(duracao) from cursos;

 ----------------------------------------------------------
 update alunos set alunoNome = "Patricia" where idAluno= 6;

----------------------------------------------------------
 delete from instrumentos where idInstrumento=8;

delete from alunos where idaluno=6;
