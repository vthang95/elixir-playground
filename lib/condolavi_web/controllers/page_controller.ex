defmodule CondolaviWeb.PageController do
  use CondolaviWeb, :controller

  def index(conn, _params) do
    render conn, "home.html"
  end

  def about(conn, _params) do
    render conn, :about, %{name: "Viet Thang"}
  end

  def admin(conn, _params) do
  	render conn, :admin
  end
end
