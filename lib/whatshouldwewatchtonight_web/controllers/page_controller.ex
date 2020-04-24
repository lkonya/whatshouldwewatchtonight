defmodule WhatshouldwewatchtonightWeb.PageController do
  use WhatshouldwewatchtonightWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
