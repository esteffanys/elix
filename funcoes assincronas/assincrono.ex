#Funções assíncronas
defmodule ProcessamentoPedido do

  # simula processamento de pagamento
  def processar_pagamento(pedido_id) do
    IO.puts("Processando pagamento para o Pedido ##{pedido_id}")
    Process.sleep(3000) # Simulando o processamento do pagamento (3000 milissegundos)
    IO.puts("Pagamento processado para o Pedido ##{pedido_id}")
  end

  #inicia uma tarefa assíncrona para processar o pagamento
  defp iniciar_tarefa_processamento(pedido_id) do
    Task.start_link(fn -> processar_pagamento(pedido_id) end)
  end

  #inicia o processamento assíncrono
  def processar_pedido_assincrono(pedido_id) do
    IO.puts("Iniciando processamento assíncrono para o Pedido ##{pedido_id}")
    iniciar_tarefa_processamento(pedido_id)
    IO.puts("Processamento assíncrono iniciado para o Pedido ##{pedido_id}")
  end
end

#criação de pedidos
pedidos = [1, 2, 3, 4, 5,6]

# Inicia o processamento assíncrono para cada pedido
Enum.each(pedidos, &ProcessamentoPedido.processar_pedido_assincrono/1)

# Aguarda um tempo para permitir que as tarefas assíncronas sejam executadas
Process.sleep(5000)
IO.puts("Todos os pedidos foram processados")

