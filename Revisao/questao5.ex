#Exiba  “Olá <nome>, seu IMC é de <idade>.”;

defmodule CalculadoraIMC do
  def calcular_imc do
    IO.puts "Digite o nome:"
    nome = IO.gets("") |> String.trim()

    IO.puts "Digite o peso em Kg:"
    peso_str = IO.gets("") |> String.trim()
    peso = String.to_float(String.replace(peso_str, ",", "."))

    IO.puts "Digite a altura em metros:"
    altura_str = IO.gets("") |> String.trim()
    altura = String.to_float(String.replace(altura_str, ",", "."))

    imc = peso / (altura * altura)

    IO.puts "Olá, #{nome}, seu IMC é de #{imc}."
  end
end

# Chame a função para calcular o IMC
CalculadoraIMC.calcular_imc()
