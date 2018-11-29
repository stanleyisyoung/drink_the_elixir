defmodule PmExample.Management.Document do
  use Ecto.Schema
  import Ecto.Changeset


  schema "documents" do
    field :name, :string
    field :content, :string
    field :view_count, :integer
    field :published, :boolean, default: false

    belongs_to :project, PmExample.Management.Project

    timestamps()
  end

  # whats valid to pass n update
  @doc false
  def changeset(document, attrs) do
    document
    |> cast(attrs, [:name, :content, :view_count, :published, :project_id])
    |> validate_required([:name]) # backend validation
  end
end
