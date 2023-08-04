defmodule ElixirGame.Game.Actions.Attack do
  alias ElixirGame.{Manager, Player}

  @move_strong_power 26..35
  @move_avg_power 18..25
  @move_weak_power 10..17

  def attack_opponent(opponent, move) do
    damage = calculate_power(move)
  end

  defp calculate_power(:move_strong), do: Enum.random(@move_strong_power)
  defp calculate_power(:move_avg), do: Enum.random(@move_avg_power)
  defp calculate_power(:move_weak), do: Enum.random(@move_weak_power)

end
