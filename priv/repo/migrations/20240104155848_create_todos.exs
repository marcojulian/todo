defmodule TodoBackend.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :completed, :boolean, default: false, null: false
      add :order, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
