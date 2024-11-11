# Importar biblioteca
require './stdlib' 

# Verificação de dados
if file_exists 'contas.yaml'
  dados = load_yaml 'contas.yaml'
else
  dados = []

# Entrada do usuário
printf "Digite seu usuário: "
usuario = input()

# Limpar terminal
cls()

#Entrada da senha
printf "Digite sua senha: "
senha = hash_md5(input_password('*'))

#Limpar terminal
cls()

# Verificação de login
for i in dados
  if i.usuario is usuario and i.senha_hash is senha
  
    printf " Bem-vindo(a) de volta %s ", usuario
    break
  else 
    printf " Este usuário não existe, tente novamente."
    break
    

