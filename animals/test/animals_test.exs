defmodule AnimalsTest do
  use ExUnit.Case
  doctest Animals, except: [{:randomise, 1}, {:selection, 1}]

  test "randomise" do
    zoo = Animals.create_zoo
    refute zoo == Animals.randomise(zoo)
  end

  test "selection" do
    zoo = Animals.create_zoo
    refute Animals.see_animals(zoo, 2) == Animals.selection(2)
  end
end
