defmodule ItsMagic.Card do
  @enforce_keys ~w[name type]a
  defstruct name: nil, type: nil, casting_cost: []

  def creature?(card), do: :creature in List.wrap(card.type)

  def land?(card), do: :land in List.wrap(card.type)
end
