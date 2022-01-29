setup do
   user = 
    %User{}
    |> User.reg_changeset(@user)
    |> Repo.insert!

  conn = 
    build_conn()
    |> put_req_header("accept", "application/json")
  %{conn: conn, user: user}
end
