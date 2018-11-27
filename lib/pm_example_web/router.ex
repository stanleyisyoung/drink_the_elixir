defmodule PmExampleWeb.Router do
  use PmExampleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # not using this portion bc no front end
  # scope "/", PmExampleWeb do
  #   pipe_through :browser

  #   get "/", PageController, :index
  # end

  # THIS IS WHAT WE'RE BUILDING OUT
  # Other scopes may use custom stacks.
  scope "/api", PmExampleWeb do
    pipe_through :api # goes thru pipline at line 12

    resources "/projects", ProjectController, only: [:index, :show] # domain/api/projects; we're only doing allowing get reqs
    # resrouces is equivalent to the following:
    # get "/project/:id", ProjectController, :show
  end
end
