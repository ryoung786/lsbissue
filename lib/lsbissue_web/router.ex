defmodule LsbissueWeb.Router do
  use LsbissueWeb, :router
  import PhxLiveStorybook.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {LsbissueWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/" do
    storybook_assets()
  end

  scope "/", LsbissueWeb do
    pipe_through :browser
    live_storybook("/storybook", backend_module: LsbissueWeb.Storybook)
    live "/foo", FooLive
  end
end
