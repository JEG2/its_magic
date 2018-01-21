defmodule CardTest do
  use ExUnit.Case, async: true

  alias ItsMagic.Card

  test "creatures are recognized" do
    creature = %Card{name: "Those Who Serve", type: :creature}
    assert Card.creature?(creature)

    creature = %Card{
      name: "Watchers of the Dead",
      type: ~w[artifact creature]a
    }

    assert Card.creature?(creature)

    land = %Card{name: "Grasping Dunes", type: :land}
    refute Card.creature?(land)
  end

  test "lands are recognized" do
    land = %Card{name: "Grasping Dunes", type: :land}
    assert Card.land?(land)

    land = %Card{name: "Plains", type: ~w[basic land]a}
    assert Card.land?(land)

    creature = %Card{name: "Those Who Serve", type: :creature}
    refute Card.land?(creature)
  end
end
