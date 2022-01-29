defmodule ShirenApi.Repo do
  use Ecto.Repo,
    otp_app: :shiren_api,
    adapter: Ecto.Adapters.Postgres
end
