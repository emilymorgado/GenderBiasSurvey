defmodule GenderBiasSurvey.Survey.Question do
  use Ecto.Schema
  import Ecto.Changeset
  alias GenderBiasSurvey.Survey.Question


  schema "questions" do
    field :format, :string
    field :next, {:array, :integer}
    field :node, :integer
    field :question, :string

    timestamps()
  end

  @doc false
  def changeset(%Question{} = question, attrs) do
    question
    |> cast(attrs, [:node, :format, :next, :question])
    |> validate_required([:node, :format, :next, :question])
  end
end

#changeset = Question.changeset(%Question{}, %{node: 2, format: "insert", next: [3], question: "Job Title"})
#{:error, changeset} = Repo.insert(changeset)
#changeset.errors
