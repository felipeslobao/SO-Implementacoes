Implementações de Sistemas Operacionais

Este repositório contém a resolução de uma lista de atividades focadas em conceitos de sistemas operacionais, utilizando CoffeeScript e a biblioteca Stdlib fornecida. Cada programa implementa funcionalidades específicas, descritas a seguir:

Atividades:

Cadastro de Usuários
* Solicita login e senha, aplica um hash na senha e armazena os dados em contas.yaml.

Login no Sistema
* Verifica o login e senha no arquivo contas.yaml e informa o sucesso ou falha do login.

Remoção de Usuário
* Exclui a conta de um usuário específico do arquivo contas.yaml.

Sorteio de Usuário
* Realiza um sorteio entre os usuários cadastrados em contas.yaml e anuncia o vencedor.

Espaço Usado pelo Usuário
* Mostra os arquivos de um usuário e calcula o espaço total ocupado, com base no arquivo hd.yaml.

Maior Arquivo do Usuário
* Exibe o maior arquivo de cada usuário presente no arquivo hd.yaml.

Internacionalização (i18n)
* Lê um código de idioma e exibe uma mensagem traduzida. Suporta pelo menos 5 idiomas.

Editor de Partições
* Simula a criação de partições em um disco de 100 GB e salva as informações em particoes.yaml.

Estado dos Processos (PCB)
* Lista processos por estado (ready, running, blocked) a partir do arquivo processos.yaml.

Processos I/O Bound (PCB)
* Exibe o nome e PID dos processos que são dependentes de I/O.

Processos por Usuário (PCB)
* Mostra o usuário responsável por cada processo, com base nos arquivos processos.yaml e usuarios.yaml.

Afinidade dos Processos (PCB)
* Exibe a afinidade de cada processo com os núcleos da CPU (considerando 4 núcleos).
