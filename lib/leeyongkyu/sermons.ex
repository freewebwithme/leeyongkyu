defmodule Leeyongkyu.Sermons do
  @moduledoc """
  The Sermons context.
  """

  import Ecto.Query, warn: false
  alias Leeyongkyu.Repo

  alias Leeyongkyu.Sermons.Sermon
  def list_sermons(scripture) do
    query = from s in Sermon, where: s.scripture == ^scripture
    Repo.all(query)
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
