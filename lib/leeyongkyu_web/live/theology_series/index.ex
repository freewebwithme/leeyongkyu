defmodule LeeyongkyuWeb.TheologySeriesLive.Index do
  use LeeyongkyuWeb, :live_view
  alias Leeyongkyu.Sermons

  @impl true
  def mount(_params, _session, socket) do
    doctrine_sermons =  Sermons.get_doctrine_sermons()
    {:ok, assign(socket, :sermons, doctrine_sermons)}
  end
end
