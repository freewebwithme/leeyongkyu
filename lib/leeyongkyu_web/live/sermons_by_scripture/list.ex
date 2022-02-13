defmodule LeeyongkyuWeb.SermonsByScriptureLive.List do
  use LeeyongkyuWeb, :live_view
  alias Leeyongkyu.Sermons

  def mount(%{"book" => book} = _params, _session, socket) do
    IO.puts("Printing book: #{book}")
    books = Sermons.list_sermons(book)
    {:ok, assign(socket, %{books: books, book_name: book})}
  end

  def display_chapter_verse(book) do
    book.scripture <> " " <> book.chapter_verse
  end
end
