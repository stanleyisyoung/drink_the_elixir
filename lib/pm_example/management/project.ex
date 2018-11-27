defmodule PmExample.Management.Project do
  use Ecto.Schema
  import Ecto.Changeset

  #this is in the management CONTEXT
  schema "projects" do
    field :description, :string # what we created from the generator
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end

# in the traditional model, we'd do:
# get_user(id)
# get_profile(user)
# update_profile(get_profile(get_user(id)))

# now in elixir
# get_user(id)
# |> get_profile()
# |> update_profile()
