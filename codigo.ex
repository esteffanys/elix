#dois_valor.ex
elixirc minhas_funcoes.ex

defmodule  do
  def dois_valor do
    :rand.uniform(100)
  end
  def lorem do
    {:rand.uniform(100),9}
  end

  def exibir_lista([]) do
  end
  def exibir_lista ([valor]) do
   IO.puts(valor)
  end
   def exibir_lista[cabeca|calda] do

   end

  end

  #examples
  iex> Ed.hello()
  :world
  def hello do
    :world
  end
  def maior ([]) do
    nil
  end
  def maior ([valor]) do
   valor
  end
  def maior ([valor1,valor2]) do
    cond do
      valor1>valor2 -> valor1
      valor2>valor1 -> valor2
      valor1 == valor2 -> valor1

    end
  end
  def maior([valor1,valor2 | cauda]) do
    cond do
      valor1>valor2 -> maior([valor1 |cauda])
      valor2>valor1 -> maior([valor2 |cauda])
      true          -> maior([valor1 |cauda])

    end
  end
  def soma ([]) do
    0
  end
  def somar([valor]) do
    valor
  end
  def soma ([cabeca| cauda]) do
    valor+soma(cauda)
  end
end
site https://hexdocs.pm/elixir/1.16/case-cond-and-if.html
