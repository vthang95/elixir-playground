defmodule CondolaviWeb.Admin.PageController do
	use CondolaviWeb, :controller

	def show(conn, _params) do
		render conn, :admin
	end
end