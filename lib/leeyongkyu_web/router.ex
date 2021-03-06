defmodule LeeyongkyuWeb.Router do
  use LeeyongkyuWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {LeeyongkyuWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug CORSPlug, origin: "*"
    plug :accepts, ["json"]
  end

  scope "/", LeeyongkyuWeb do
    pipe_through :browser

    live "/", HomeLive.Index, :index
    live "/profile", ProfileLive.Index, :index
    live "/background", BackgroundLive.Index, :index
    live "/epc-history", EpcHistoryLive.Index, :index
    live "/sermons/by-number", SermonsByNumberLive.Index, :index
    live "/sermons/by-scripture", SermonsByScriptureLive.Index, :index
    live "/sermons/by-scripture/:book", SermonsByScriptureLive.List, :list
    live "/sermons/by-scripture/pdf/:book_id", SermonsByScriptureLive.Detail, :show
    live "/exposition", ExpositionLive.Index, :index
    live "/theology-series", TheologySeriesLive.Index, :index
    live "/audio-sermons/truthful-theology", AudioSermons.TruthfulTheologyLive.Index, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", LeeyongkyuWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: LeeyongkyuWeb.Telemetry
    end
  end
end
