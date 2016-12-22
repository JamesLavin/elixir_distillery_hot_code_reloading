defmodule PhoenixEnvSettings.Repo.Migrations.CreateMemo do
  use Ecto.Migration

  def change do
    create table(:memos) do
      add :title, :string
      add :body, :string

      timestamps()
    end

  end
end
