defmodule Leeyongkyu.Repo.Migrations.CreateSermosn do
  use Ecto.Migration

  def change do
    create table(:sermons) do
      add :scripture, :string
      add :chapter, :integer
      add :verse, :string
      add :title, :string
      add :book_number, :integer
      add :book_url, :string
      add :page, :integer

      timestamps()
    end

  end
end
