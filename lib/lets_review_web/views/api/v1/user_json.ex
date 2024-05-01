defmodule LetsReviewWeb.API.V1.UserJSON do
  def get(%{user: user}) do
    %{
      api_version: "1.0.0",
      data: %{
        kind: "user",
        item: user
      }
    }
  end
end
