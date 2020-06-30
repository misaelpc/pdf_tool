defmodule Annotations.CreateWorker do
  @moduledoc """
  This worker add svg annotations to a pdf
  """
  use GenServer
  require Logger

  def start_link(name) do
    GenServer.start_link(__MODULE__, nil, name: {:global, name})
  end

  def init(init_arg) do
    {:ok, init_arg}
  end

  def handle_call({:add_anotation, path, annotations}, _from, state) do
    Logger.info(path)
    Logger.info(annotations)
    Logger.info(pid_to_string(self()))
    {:reply, "https://pdf_tool/sw/annotaded.pdf", state}
  end

  defp pid_to_string(pid) do
    "#{inspect pid}"
  end
end