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

    def turn, do: Map.get(Manager.info(), :turn)
end
