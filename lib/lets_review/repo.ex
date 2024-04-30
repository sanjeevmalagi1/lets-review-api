defmodule LetsReview.Repo do
  use Ecto.Repo,
    otp_app: :lets_review,
    adapter: Ecto.Adapters.Postgres
end
