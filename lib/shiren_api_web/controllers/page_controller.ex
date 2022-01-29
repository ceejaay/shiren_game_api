defmodule ShirenApiWeb.PageController do
  use ShirenApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
