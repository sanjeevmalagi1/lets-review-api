defmodule LetsReview.Accounts.User.Query do
  import Ecto.Query

  alias LetsReview.{Repo, Accounts}
  alias Accounts.User

  def get(filter) do
    User
    |> where(^filter)
    |> Repo.one()
  end

  def list(filter) do
    User
    |> where(^filter)
    |> Repo.all()
  end
end
