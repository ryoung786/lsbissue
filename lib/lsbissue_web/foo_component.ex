defmodule LsbissueWeb.Foo do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div id={@id}>
      <button phx-target={@myself} phx-click="inc">+</button>
      <%= render_slot(@foo, @counter) %>
    </div>
    """
  end

  def handle_event("inc", _, socket) do
    {:noreply, assign(socket, counter: socket.assigns.counter + 1)}
  end
end
