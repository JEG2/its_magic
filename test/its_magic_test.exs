defmodule ItsMagicTest do
  use ExUnit.Case
  doctest ItsMagic

  test "greets the world" do
    assert ItsMagic.hello() == :world
  end
end
