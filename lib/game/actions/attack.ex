defmodule ElixirGame.Game.Actions.Attack do
  alias ElixirGame.{Manager, Player}
  alias ElixirGame.Game.Status

  @move_strong_power 26..35
  @move_avg_power 18..25
  @move_weak_power 10..17

  def attack_opponent(opponent, move) do
    damage = calculate_power(move)

    opponent
    |> Manager.fetch_player()
    |> Map.get(:life)
    |> calculate_total_life(damage)
    |> update_opponent_life(opponent, damage)
  end

  defp calculate_power(:move_strong), do: Enum.random(@move_strong_power)
  defp calculate_power(:move_avg), do: Enum.random(@move_avg_power)
  defp calculate_power(:move_weak), do: Enum.random(@move_weak_power)

  defp calculate_total_life(life, damage) when life - damage <= 0, do: 0
  defp calculate_total_life(life, damage), do: life - damage

  defp update_opponent_life(life, opponent, damage) do
    opponent
    |> Manager.fetch_player()
    |> Map.put(:life, life)
    |> update_game(opponent, damage)
  end

  defp update_game(player, opponent, damage) do
    Manager.info()
    |> Map.put(opponent, player)
    |> Manager.update()

    Status.print_round_message(opponent, :attack, damage)
  end
end
