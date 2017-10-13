defmodule CondolaviWeb.Router do
  use CondolaviWeb, :router

  alias CondolaviWeb.Plug

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

  pipeline :public do
    plug Plug.Turbolinks
  end

  scope "/", CondolaviWeb do
    pipe_through [:browser, :public] # Use the default browser stack

    get "/", PageController, :index
    get "/about", PageController, :about
  end

  scope "/admin", CondolaviWeb.Admin do
    pipe_through [:browser]

    get "/*path", PageController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", CondolaviWeb do
  #   pipe_through :api
  # end
end
