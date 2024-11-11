require './stdlib'

# Verificação de arq
if file_exists 'contas.yaml'
  dados = load_yaml 'contas.yaml'

  # Achando o max do vetor
  max = len(dados) - 1

  # Sorteio
  sorteio = random(0, max)
  sorteado = dados[sorteio]

  # Exibir os results
  printf "O usuário sorteado foi: %s!!!", sorteado.usuario
  printf "PARABÉNS!!! Você não ganhou nada!!!"
