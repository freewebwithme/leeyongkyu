defmodule Leeyongkyu.Repo.Migrations.AddSermonUrl do
  use Ecto.Migration

  def change do
    alter table("sermons") do
      add :sermon_url, :string
    end
  end
end
