defmodule PmExample.Repo.Migrations.CreateDocuments do
  use Ecto.Migration

  def change do
    create table(:documents) do

      timestamps()
    end

  end
end
