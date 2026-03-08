
## ⚙️ Projeto Banco de Dados – API ConvertPro

**ConvertPro** é uma **API REST em Laravel** que converte ficheiros de forma **simples e assíncrona**: permite descarregar vídeos do YouTube em **MP4 ou MP3** e transformar **áudios enviados em MP3**. A proposta é oferecer uma solução **gratuita, segura e prática**.

Neste repositório, o foco está **exclusivamente na arquitetura da camada de dados em MySQL**. A ideia é estruturar uma base de dados **organizada, rápida e segura**, preparada para suportar o tráfego e os processamentos da API, mesmo antes da implementação completa do backend.

O objetivo é **pensar primeiro na base estrutural do sistema**, planeando como os dados serão armazenados e geridos ao longo de todo o processo de conversão.

*(Por outras palavras, estou apenas a plantar a semente da arquitetura 🌱.)*

## 🗄️ Como a base de dados organiza tudo isto? (Tabelas)

Para garantir que a API funcione bem, sem lentidão e sem acumular dados desnecessários, a regra de negócio foi dividida em **três tabelas principais**, separando o **pedido de conversão** do **resultado final**.

**`usuarios`** : Regista quem utiliza a plataforma, com **passwords protegidas por hash**. O sistema também permite conversões **anónimas** (sem `user_id`).

**`conversoes` (Pedido)** : Onde a conversão começa. Cada pedido é registado com um **status** (`pending`, `processing`, `completed` ou `failed`), funcionando como uma **fila organizada de tarefas**.

**`arquivos_convertidos` (Resultado)** :Guarda apenas informações da conversão concluída (**relação 1:1**). Em vez de armazenar arquivos pesados no banco, registra **o caminho do ficheiro no servidor** e uma **data de expiração (`expires_at`)**, permitindo remover arquivos antigos e economizar espaço.


