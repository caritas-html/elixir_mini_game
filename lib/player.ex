defmodule ElixirGame.Player do
  @required_fields [:life, :name, :moves]

  @enforce_keys @required_fields
  defstruct @required_fields

  @max_life 100

  def build(name, move_strong, move_avg, move_weak, move_heal) do
    %ElixirGame.Player{
      name: name,
      moves: %{
        move_strong: move_strong,
        move_avg: move_avg,
        move_weak: move_weak,
        move_heal: move_heal,
      },
      life: @max_life
    }
  end
end
