defmodule GenderBiasSurveyWeb.SurveyController do
  use GenderBiasSurveyWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end