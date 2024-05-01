defmodule LetsReview.Repo.Migrations.AddUserTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :role, :string

      timestamps()
    end

    create index(:users, [:email], unique: true)
  end
end
