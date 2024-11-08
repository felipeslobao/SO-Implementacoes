require './stdlib' # Importar lib

# Verifica dados
if file_exists 'contas.yaml'
    dados = load_yaml 'contas.yaml'
else
    dados = []

# Entrada de usuario
printf "Digite seu usuario" 
user = input()

# Limpar terminal
cls()

# Entrada de senha
printf "Digite sua senha"
senha = hash_md5(input_password('*'))

# Limpar terminal
cls()

# variavel auxiliar
aux = -1

# Verifica login
for i in dados
    if i.usuario == user && i.senha_hash == senha
        aux++
        printf "Login concluído com sucesso"
        printf ""
        # exclusão de conta
        printf "Você quer excluir sua conta? 'y' para Sim e 'n' para Não"
        op = input()
        if op == 'y' || 'Y'
            dados.delete(aux)
            printf "posição vetorial: %d",  aux
        
            printf "Sua conta foi excluida"
        else 
            printf "Tudo bem, sua conta não foi excluída"

    else 
        printf "Nome e/ou senha inválida, tente novamente!! "
