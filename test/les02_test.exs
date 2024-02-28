defmodule Les02Test do
  use ExUnit.Case
  doctest Les02

  test "greets the world" do
    assert Les02.hello() == :world
  end
end
