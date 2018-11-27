defmodule PmExampleWeb.PageController do
  use PmExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
