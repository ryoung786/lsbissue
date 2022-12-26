defmodule Storybook.Components.Foo do
  use PhxLiveStorybook.Story, :live_component

  def component, do: LsbissueWeb.Foo

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{counter: 1},
        slots: [
          """
          <:foo let={x}>counter: <%= x %></:foo>
          """
        ]
      }
    ]
  end
end
