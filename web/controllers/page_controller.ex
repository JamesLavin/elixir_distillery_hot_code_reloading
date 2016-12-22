defmodule PhoenixEnvSettings.PageController do
  use PhoenixEnvSettings.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
