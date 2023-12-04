# mapa.ex

# Criando um mapa representando informações de uma pessoa
pessoa = %{nome: "Alice", idade: 30, cidade: "CidadeA"}

# Adicionando uma nova chave-valor ao mapa
pessoa_com_profissao = Map.put(pessoa, :profissao, "Engenheira")

# Imprimindo o mapa resultante
IO.inspect(pessoa_com_profissao)
