INSERT INTO arquivos_convertidos (conversion_id, file_path, file_name, mime_type, size_in_bytes, disk, is_downloadable, expires_at) VALUES
(1, '/converted/documento1.pdf', 'documento1.pdf', 'application/pdf', 524288, 'local', TRUE, DATE_ADD(NOW(), INTERVAL 7 DAY)),
(2, '/converted/imagem1.png', 'imagem1.png', 'image/png', 1048576, 'local', TRUE, DATE_ADD(NOW(), INTERVAL 7 DAY)),
(4, '/converted/audio1.wav', 'audio1.wav', 'audio/wav', 2097152, 's3', TRUE, DATE_ADD(NOW(), INTERVAL 30 DAY));


SELECT * FROM arquivos_convertidos;
