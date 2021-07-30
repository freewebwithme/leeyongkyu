defmodule Leeyongkyu.Sermons.Sermon do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sermons" do
    field :book_number, :integer
    field :book_url, :string
    field :chapter, :integer
    field :page, :integer
    field :scripture, :string
    field :title, :string
    field :verse, :string
    field :chapter_verse, :string
    field :sermon_url, :string

    timestamps()
  end

  @doc false
  def changeset(sermon, attrs) do
    sermon
    |> cast(attrs, [:scripture, :chapter, :verse, :title, :book_number, :book_url, :page, :chapter_verse, :sermon_url])
    |> validate_required([:scripture, :chapter, :verse, :title, :book_number, :book_url, :page, :chapter_verse])
    |> build_pdf_url_for_book()
  end

  def build_pdf_url_for_book(changeset) do
    book_page = get_change(changeset, :page)
    book_url = get_change(changeset, :book_url)
    book_page = Integer.to_string(book_page)

    sermon_url = book_url <> "#page=" <> book_page
    put_change(changeset, :sermon_url, sermon_url)
  end
end
