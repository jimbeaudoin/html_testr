defmodule HtmlTestr.PageController do
  use HtmlTestr.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
