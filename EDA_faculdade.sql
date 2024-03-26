-- quantos cursos a faculdade oferece?--
SELECT COUNT(idCurso) FROM curso;

-- quais disciplinas sao ofertadas?--
select nome from disciplina;

-- em que cursos os estudantes estao matriculados?--
SELECT c.nome AS nome_curso, a.nome AS nome_aluno
FROM curso c
INNER JOIN alunocurso ac ON c.idCurso = ac.idCurso
INNER JOIN aluno a ON ac.idAluno = a.idAluno
ORDER BY nome_aluno DESC;

-- qual a media das notas das disciplinas de todos os cursos da faculdade? --
SELECT AVG(nota) AS media_notas, idDisciplina 
FROM historico
GROUP BY idDisciplina;

-- quantos alunos estão matriculados por curso?--
SELECT c.nome AS nome_curso, COUNT(ac.idAluno) AS quantidade_alunos
FROM curso c
LEFT JOIN alunocurso ac ON c.idCurso = ac.idCurso
GROUP BY c.nome;