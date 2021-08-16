defmodule Leeyongkyu.Sermons do
  @moduledoc """
  The Sermons context.
  """

  import Ecto.Query, warn: false
  alias Leeyongkyu.Repo

  alias Leeyongkyu.Sermons.Sermon
  def list_sermons(scripture) do
    query = from s in Sermon, where: s.scripture == ^scripture, order_by: s.chapter
    Repo.all(query)
  end

  def get_doctrine_sermons() do
    query = from s in Sermon, where: (s.title == "바른 신학") or (s.title == "성경 신학") or (s.title == "사도신경 강해") or (s.title == "칼빈주의 5대 교리")
    Repo.all query
  end

  def get_sermon!(id), do: Repo.get!(Sermon, id)

  def create_sermon(attrs \\ %{}) do
    %Sermon{}
    |> Sermon.changeset(attrs)
    |> Repo.insert()
  end

  def update_sermon(%Sermon{} = sermon, attrs) do
    sermon
    |> Sermon.changeset(attrs)
    |> Repo.update()
  end

  def delete_sermon(%Sermon{} = sermon) do
    Repo.delete(sermon)
  end

  def change_sermon(%Sermon{} = sermon, attrs \\ %{}) do
    Sermon.changeset(sermon, attrs)
  end
end
