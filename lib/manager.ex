defmodule ElixirGame.Manager do
  use Agent

  def start(computer, player) do
    initial_value = %{computer: computer, player: player, turn: :player, status: :started}
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def info do
    Agent.get(__MODULE__, fn state -> state end)
  end

  def player, do: Map.get(info(), :player) # returns the player struct
end
