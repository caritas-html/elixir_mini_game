defmodule ElixirGame.Game.Actions do
  alias ElixirGame.{Manager, Player}

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
