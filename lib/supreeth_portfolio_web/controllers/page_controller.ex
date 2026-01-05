defmodule SupreethPortfolioWeb.PageController do
  use SupreethPortfolioWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
