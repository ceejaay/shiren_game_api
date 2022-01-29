defmodule ShirenApi.UserTest do
  use ShirenApi.Datacase, async: true

  test "user with valid attributes" do
    user = ShirenApi.User.reg_changeset(%User{}, @valid_attributes)
    assert user.valid?
  end

end

