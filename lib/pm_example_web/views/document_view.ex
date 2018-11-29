defmodule PmExampleWeb.DocumentView do
  use PmExampleWeb, :view
  use JaSerializer.PhoenixView
  # alias PmExampleWeb.DocumentView

  #manual method
  # def render("index.json", %{documents: documents}) do
  #   %{data: render_many(documents, DocumentView, "document.json")}
  # end

  # def render("show.json", %{document: document}) do
  #   %{data: render_one(document, DocumentView, "document.json")}
  # end

  # def render("document.json", %{document: document}) do
  #   %{id: document.id,
  #     name: document.name,
  #     published: document.published,
  #     content: document.content,
  #     view_count: document.view_count,
  #     project_id: document.project_id
  #   }
  # end

  # use jaserializer to automate it sooo
  attributes [:name, :published, :content, :view_count, :project_id]
end
