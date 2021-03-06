defmodule HtmlTestr.Router do
  use HtmlTestr.Web, :router

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

  scope "/", HtmlTestr do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get  "/login", PageController, :login
    delete "/logout", PageController, :logout

  end

  # Other scopes may use custom stacks.
  # scope "/api", HtmlTestr do
  #   pipe_through :api
  # end
end
