defmodule GenderBiasSurveyWeb.WelcomeController do
  use GenderBiasSurveyWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end