-- Lista nome do cliente, tipo (PF ou PJ), e dados dos veículos
SELECT 
  c.nome AS cliente, 
  c.tipo_cliente,
  v.placa,
  v.marca,
  v.modelo,
  v.ano
FROM Cliente c
JOIN Veiculo v ON c.id_cliente = v.id_cliente;
-- Mostra OS concluídas com valor acima de 1000
SELECT 
  numero_os, 
  data_conclusao, 
  valor_total 
FROM OrdemServico
WHERE status = 'Concluída' AND valor_total > 1000;
-- Mostra média do valor por serviço dentro de cada OS
SELECT 
  os.id_os,
  os.numero_os,
  ROUND(AVG(oss.valor_total), 2) AS media_servico_os
FROM OrdemServico os
JOIN OS_Servico oss ON os.id_os = oss.id_os
GROUP BY os.id_os, os.numero_os;
-- Lista mecânicos por especialidade, ordenados pelo nome
SELECT 
  especialidade,
  nome
FROM Mecanico
ORDER BY especialidade, nome;
-- Conta quantas OS cada equipe tem e filtra quem tem mais de 1
SELECT 
  e.nome AS equipe,
  COUNT(os.id_os) AS total_os
FROM Equipe e
JOIN OrdemServico os ON e.id_equipe = os.id_equipe
GROUP BY e.nome
HAVING COUNT(os.id_os) > 1;
-- Lista peças por OS e valor gasto em cada
SELECT 
  os.numero_os,
  p.descricao AS peca,
  osp.quantidade,
  p.valor_unitario,
  osp.valor_total
FROM OrdemServico os
JOIN OS_Peca osp ON os.id_os = osp.id_os
JOIN Peca p ON p.id_peca = osp.id_peca
ORDER BY os.numero_os, p.descricao;
