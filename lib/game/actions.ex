defmodule ElixirGame.Game.Actions do
  alias ElixirGame.{Manager, Player}
  alias ElixirGame.Game.Actions.Attack

  def attack(move) do
    case Manager.turn() do
      :player -> Attack.attack_opponent(:computer, move)
      :computer -> Attack.attack_opponent(:player, move)
    end
  end

  def fetch_move(move) do
    Manager.player()
    |> Map.get(:moves)
    |> find_move(move)
  end

  defp find_move(moves, move) do
    Enum.find_value(moves, {:error, move}, fn {k, v} ->
      IO.inspect(moves)
      if (v == move) do
        {:ok, k}
      end
    end)
  end
end
