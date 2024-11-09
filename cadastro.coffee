require('./stdlib')  # Importa a biblioteca

# Verifica se o arquivo existe

if file_exists('contas.yaml')

  dados = load_yaml 'contas.yaml' 

else 

   dados = []

# Imprime e solicita o usuário
printf "Digite seu usuário: "
novousuario = input()

# Limpa o terminal
cls()

# Verificação de atomicidade
for i in dados
  if i.usuario is novousuario
    printf "Esse usuário já está em uso, tente novamente com outro."
    return 
    
# Imprime e solicita a senha, aplicando hash 
printf "Digite sua senha: "
senha_hash_md5 = hash_md5(input_password('*'))

# Limpa o terminal novamente
cls()


# Cria um novo objeto/struct com os dados do usuário
novaconta = 
{
  usuario: novousuario, 
  senha_hash: senha_hash_md5
}

# Adiciona a nova conta a lista 
dados.push(novaconta)

# Salva os dados no arquivo YAML
save_yaml 'contas.yaml', dados  

# Limpa o terminal novamente
cls() 

# Imprime a mensagem de sucesso
printf "Usuário cadastrado com sucesso!"
