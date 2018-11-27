defmodule PmExample.Repo do
  use Ecto.Repo,
    otp_app: :pm_example,
    adapter: Ecto.Adapters.Postgres
end
