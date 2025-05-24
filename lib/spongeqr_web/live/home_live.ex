defmodule SpongeqrWeb.HomeLive do
  use SpongeqrWeb, :live_view

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  @impl Phoenix.LiveView
  def render(assigns) do
    ~H"""
    <h1 class="text-5xl font-bold">Hello there!</h1>
    """
  end
end
