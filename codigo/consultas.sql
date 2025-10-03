,-- Mostrar todos os dados da tabela cursos
select * from cursos;

----------------------------------------------------------

-- Mostrar os registos da tabela instrumentos filtrados por todos os instrumentos de percussão
select * from instrumentos where genero="Percussão";

----------------------------------------------------------

-- Juntar tabelas para apresentar dados combinados. Mostra o nome dos alunos, dos professores que têm e o instrumento que praticam
-- (select_join.png)
select alunos.alunoNome, instrumentos.nomeInst, professores.nomeProf from cursos
join alunos on alunos.idCurso =cursos.idCurso
join professores on professores.idInsturmento = cursos.idinstrumento
join instrumentos on instrumentos.idinstrumento = cursos.idinstrumento;

----------------------------------------------------------
-- Conta quantos instrumentos existem na tabela
select count(*) from instrumentos;

-- soma o numero total de meses de todos os cursos
 select sum(duracao) from cursos;

-- faz a media de duração dos cursos
 select avg(duracao) from cursos;

 ----------------------------------------------------------
-- atualiza um registo
 update alunos set alunoNome = "Patricia" where idAluno= 6;

----------------------------------------------------------
-- apaga um instrumento que não está a ser utilizado
 delete from instrumentos where idInstrumento=8;
-- apaga um aluno da tabela
delete from alunos where idaluno=6;