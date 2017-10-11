defmodule CondolaviWeb.PageController do
  use CondolaviWeb, :controller

  def index(conn, _params) do
    render conn, "home.html"
  end

  def about(conn, _params) do
    render conn, :about, %{name: "Viet Thang"}
  end
end
