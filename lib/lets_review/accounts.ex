defmodule LetsReview.Accounts do
  alias LetsReview.Accounts.User
  alias User.Query, as: UserQuery

  def get_user(id), do: UserQuery.get(id: id)
end
