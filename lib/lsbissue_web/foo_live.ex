defmodule LsbissueWeb.FooLive do
  use LsbissueWeb, :live_view

  def render(assigns) do
    ~H"""
    <.live_component module={LsbissueWeb.Foo} id="foo" counter={1}>
      <:foo :let={x}><%= x %></:foo>
    </.live_component>
    """
  end
end
