defmodule Leeyongkyu.Repo.Migrations.AddChapterVerse do
  use Ecto.Migration

  def change do
    alter table("sermons") do
      add :chapter_verse, :string
    end
  end
end
