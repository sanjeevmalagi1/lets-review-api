defmodule LetsReview.Accounts.User do
  use Ecto.Schema

  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string
    field :role, :string
    belongs_to :manager, LetsReview.Accounts.User

    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :role])
    |> validate_required([:name, :email])
  end
end
