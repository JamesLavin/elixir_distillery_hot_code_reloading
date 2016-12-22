defmodule PhoenixEnvSettings.Router do
  use PhoenixEnvSettings.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixEnvSettings do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", PhoenixEnvSettings do
    pipe_through :api

    resources "/memos", MemoController, except: [:new, :edit]
  end
end
