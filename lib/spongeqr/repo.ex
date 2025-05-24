defmodule Spongeqr.Repo do
  use Ecto.Repo,
    otp_app: :spongeqr,
    adapter: Ecto.Adapters.Postgres
end
