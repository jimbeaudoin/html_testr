defmodule HtmlTestr.PageController do
  use HtmlTestr.Web, :controller

  def index(conn, _params) do
    logged_in = get_session(conn, :logged_in)
    render conn, "index.html", logged_in: logged_in
  end


  def login(conn, _params) do
    conn
    |> put_session(:logged_in, true)
    |> configure_session(renew: true)
    |> redirect(to: page_path(conn, :index))
  end

  def logout(conn, _params) do
    conn
    |> configure_session(drop: true)
    |> redirect(to: page_path(conn, :index))
  end
end
