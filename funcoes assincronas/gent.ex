defmodule ExemploGenServerTest do
  use ExUnit.Case

  setup do
    {:ok, gen_server_pid} = ExemploGenServer.start_link()
    {:ok, gen_server_pid: gen_server_pid}
  end

  test "adiciona valor ao GenServer" do
    ExemploGenServer.adicionar_valor(@gen_server_pid, :chave2, "valor2")

    # Verifica se o valor foi adicionado corretamente ao GenServer
    assert_receive {:adicionar_valor, :chave2, "valor2"}
  end
end
