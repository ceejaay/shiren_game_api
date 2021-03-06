defmodule ShirenApiWeb.User do
  use ShirenApiWeb, :model
  schema "users" do
    field :name, :string
    field :subname, :string
    field :email, :string
    field :password, :string
    field :job, :string

  end

  def reg_changeset(changeset, params \\ %{}) do
    changeset
    |> cast(params, [:name, :subname, :email, :job, :password])
    |> validate_required([:name, :subname, :email, :job])
    |> validate_format(:email, -r/\S+@\.\S+/ )
  end
end
