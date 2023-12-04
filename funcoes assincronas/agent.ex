#outra forma asssincron
defmodule ExemploAgentTest do
  use ExUnit.Case

  test "adiciona valor ao Agent" do
    {:ok, agent_pid} = ExemploAgent.start_link()

    ExemploAgent.adicionar_valor(agent_pid, :chave1, "valor1")

    assert_receive {:ok, _} = Agent.get(agent_pid, &(&1))
    # Verifica se o valor foi adicionado corretamente ao Agent
    assert_receive {:chave1, "valor1"} = Agent.get(agent_pid, &(&1))
  end
end

