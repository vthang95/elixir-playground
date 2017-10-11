defmodule CondolaviWeb.PageController do
  use CondolaviWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
