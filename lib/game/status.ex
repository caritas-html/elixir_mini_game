defmodule ElixirGame.Game.Status do
  alias ElixirGame.Manager

    def print_round_message() do
      IO.puts("\n the game is started! \n")
      IO.inspect(Manager.info())
      IO.puts("---------------------")
    end

    def print_error_message(move) do
      IO.puts("\n #{move} is not a valid move! \n")
      IO.puts("---------------------")
    end

    def print_round_message(opponent, :attack, damage) do
      IO.puts("\n #{opponent} is attacked with #{:attack} and lost #{damage} life points! \n")
      IO.puts("---------------------")
    end

    def print_round_message(opponent, :heal, damage) do
      IO.puts("\n #{opponent} is healed with #{:heal} and won #{damage} life points! \n")
      IO.puts("---------------------")
    end

    def turn, do: Map.get(Manager.info(), :turn)
end
