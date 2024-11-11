require './stdlib' # Importar lib

# Verifica dados
if file_exists 'contas.yaml'
    dados = load_yaml 'contas.yaml'
else
    dados = []

# Entrada de usuario
printf "Digite seu usuario: " 
user = input()

# Limpar terminal
cls()

# Entrada de senha
printf "Digite sua senha: "
senha = hash_md5(input_password('*'))

# Limpar terminal
cls()

# Variavel aux
aux = -1

# Verifica login
for i in dados
    aux++
    if i.usuario is user and i.senha_hash is senha
        printf "Login concluído com sucesso"
        printf ""
     
        # Pergunta sobre exclusão
        printf "Você quer excluir sua conta? 'y' para Sim e 'n' para Não"
        op = input()

            # opção Y(Sim)
        if op is 'y' or op is 'Y'

            # Exclui conta
            dados.splice(aux, 1)
            cls()
            printf "Sua conta foi excluída com sucesso."

            # Atualiza o arq
            save_yaml 'contas.yaml', dados
            break

            # Opção N(Não)
        if op is 'n' or op is 'N'
            cls()
            printf "Tudo bem, sua conta não foi excluída."
            break
        # Caso a pessoa digite uma letra não correspondente
        else
        printf "Essa opção não existe, tente novamente!!"
        
        


    else
    printf "Nome e/ou senha inválida, tente novamente!!"
