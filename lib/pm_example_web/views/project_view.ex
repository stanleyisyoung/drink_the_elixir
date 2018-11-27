defmodule PmExampleWeb.ProjectView do
  use PmExampleWeb, :view
  alias PmExampleWeb.ProjectView

  # focusing on this main index route for the tutorial
  # what template to render
  def render("index.json", %{projects: projects}) do
    %{data: render_many(projects, ProjectView, "project.json")}
  end

  def render("show.json", %{project: project}) do
    %{data: render_one(project, ProjectView, "project.json")}
  end

  # where we control what's exposed to user
  def render("project.json", %{project: project}) do
    %{id: project.id,
      title: project.title,
      description: project.description}
  end
end
