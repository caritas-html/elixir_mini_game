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
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_error_message(move)
  defp do_move({:ok, move}) do
    case move do
      move -> Actions.attack(move)
      :move_heal -> "realiza cura"
    end
  end
end
