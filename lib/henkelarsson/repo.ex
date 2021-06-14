defmodule Henkelarsson.Repo do
  use Ecto.Repo,
    otp_app: :henkelarsson,
    adapter: Ecto.Adapters.Postgres
end
