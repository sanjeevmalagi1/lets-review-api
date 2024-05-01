defmodule LetsReview.Accounts.User.Create do
  alias LetsReview.{Repo, Accounts}
  alias Accounts.User

  def create(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end
end
