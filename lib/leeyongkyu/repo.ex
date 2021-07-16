defmodule Leeyongkyu.Repo do
  use Ecto.Repo,
    otp_app: :leeyongkyu,
    adapter: Ecto.Adapters.Postgres
end
