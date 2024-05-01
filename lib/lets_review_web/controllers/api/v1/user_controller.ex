defmodule LetsReviewWeb.API.V1.UserController do
  use LetsReviewWeb, :controller

  def get(conn, _params) do
    conn
    |> put_status(:ok)
    |> render(:get, user: %{name: "Test User"})
  end
end
