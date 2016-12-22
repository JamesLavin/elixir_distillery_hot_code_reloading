defmodule PhoenixEnvSettings.PageControllerTest do
  use PhoenixEnvSettings.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Super Duper Improved Phoenix!"
  end
end
