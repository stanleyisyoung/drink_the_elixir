defmodule PmExampleWeb.ProjectController do
  use PmExampleWeb, :controller

  alias PmExample.Management  # allows us to just use 'Management.___'
  alias PmExample.Management.Project # Project.___

  action_fallback PmExampleWeb.FallbackController

  # this whole file is the PUBLIC web interface
  # all logic should be placed in management/respectiveFile.ex context
  def index(conn, _params) do
    projects = Management.list_projects() # calls management/management.ex/list_project()
    render(conn, "index.json", projects: projects)
  end

  def create(conn, %{"project" => project_params}) do
    with {:ok, %Project{} = project} <- Management.create_project(project_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.project_path(conn, :show, project))
      |> render("show.json", project: project)
    end
  end

  def show(conn, %{"id" => id}) do
    project = Management.get_project!(id)
    render(conn, "show.json", project: project)
  end

  def update(conn, %{"id" => id, "project" => project_params}) do
    project = Management.get_project!(id)

    with {:ok, %Project{} = project} <- Management.update_project(project, project_params) do
      render(conn, "show.json", project: project)
    end
  end

  def delete(conn, %{"id" => id}) do
    project = Management.get_project!(id)

    with {:ok, %Project{}} <- Management.delete_project(project) do
      send_resp(conn, :no_content, "")
    end
  end
end
