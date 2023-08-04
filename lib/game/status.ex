defmodule ElixirGame.Game.Status do
  alias ElixirGame.Manager

    def print_round_message() do
      IO.puts("\n the game is started! \n")
      IO.inspect(Manager.info())
      IO.puts("---------------------")
    end
end
