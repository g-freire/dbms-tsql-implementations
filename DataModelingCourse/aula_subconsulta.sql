  SELECT TOP (1000) *
  FROM [db_Biblioteca].[dbo].[tbl_editoras]
  SELECT TOP (1000) *
  FROM [db_Biblioteca].[dbo].[tbl_autores]
  SELECT TOP (1000) *
  FROM [db_Biblioteca].[dbo].[tbl_livros]

  --inicio aula subconsulta 
  --select (select 'gf') as sub;

  -- subconsulta somando os precos total dos livros por autores
  select Resultado.Nome, sum(Resultado.Preco) as Preco 
  from 
  (SELECT Nome_Autor as Nome, Preco_Livro as Preco 
  from tbl_livros l
  inner join tbl_autores a
  on l.ID_Autor = a.ID_Autor)
  as Resultado
  group by Resultado.Nome 
  order by Preco desc