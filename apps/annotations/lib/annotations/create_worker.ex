defmodule Annotations.CreateWorker do
  @moduledoc """
  This server helps to monitor a process and execute some action 
  when it's terminated
  """
  use GenServer

  def start_link(name) do
    GenServer.start_link(__MODULE__, nil, name: {:global, name})
  end

  def handle_call({:add_anotation, path}, _from, state) do
    IO.inspect path
    {:reply, :ok, state}
  end

  # @spec start_link(%{name: String.t(), process: pid(), on_terminate: function()}) :: any()
  # def start_link(%{name: name} = args) do
  #   GenServer.start_link(__MODULE__, args, name: via_tuple(name))
  # end
end