defmodule GenderBiasSurvey.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :node, :integer
      add :format, :string
      add :next, {:array, :integer}
      add :question, :string

      timestamps()
    end

  end
end
