defmodule ElixirGame do
  alias ElixirGame.Player

  def create_player(name, move_strong, move_avg, move_weak, move_heak) do
    Player.build(name, move_strong, move_avg, move_weak, move_heak)
  end
end
