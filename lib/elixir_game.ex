defmodule ElixirGame do
  alias ElixirGame.{Manager, Player}
  alias ElixirGame.Game.{Actions, Status}

  def create_player(name, move_strong, move_avg, move_weak, move_heak) do
    Player.build(name, move_strong, move_avg, move_weak, move_heak)
  end

  def start_game(player) do
    "Kasparov"
    |> create_player(:punch, :kick, :kiss, :heal)
    |> ElixirGame.Manager.start(player)
    info()
  end

  def info do
    Status.print_round_message()
  end

  def make_move(move) do
    Actions.fetch_move(move)
  end

end
