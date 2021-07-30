defmodule LeeyongkyuWeb.SermonsByScriptureLive.Detail do
  use LeeyongkyuWeb, :live_view
  alias Leeyongkyu.Sermons

  def mount(%{"book_id" => book_id} = _params, _session, socket) do
    book = Sermons.get_sermon!(book_id)
    {:ok, assign(socket, %{book: book})}
  end
end
