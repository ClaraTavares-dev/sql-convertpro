SELECT u.nome, c.source, c.target_format, c.status
FROM usuarios u
JOIN conversoes c ON u.id = c.user_id
WHERE u.email = 'joao.silva@email.com';

SELECT 
    u.nome AS usuario,
    c.source AS arquivo_original,
    a.file_name AS arquivo_convertido,
    a.size_in_bytes / 1024 AS tamanho_kb,
    a.expires_at AS expira_em
FROM arquivos_convertidos a
JOIN conversoes c ON a.conversion_id = c.id
JOIN usuarios u ON c.user_id = u.id;

SELECT status, COUNT(*) as total
FROM conversoes
GROUP BY status;
