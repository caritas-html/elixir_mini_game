defmodule ElixirGameTest do
  use ExUnit.Case
  doctest ElixirGame

  test "greets the world" do
    assert ElixirGame.hello() == :world
  end
end
