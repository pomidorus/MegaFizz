defmodule Service.MegaFizzApi do
  use HTTPoison.Base
  @moduledoc false

  def set_favorite([number: number, favorited: favorited, page: page, per_page: per_page]) do
    url_favorite = "https://protected-wave-98335.herokuapp.com/favorite"
    url_body = "{\"number\": \"#{number}\", \"favorited\": \"#{favorited}\", \"page\": \"#{page}\", \"per_page\": \"#{per_page}\"}"
    try do
      HTTPoison.start
      HTTPoison.post(url_favorite, url_body, [{"Content-Type", "application/json"}])
      |> handle_response
    rescue
      e in HTTPoison.Error -> e
      ""
    end
  end

  def handle_response({:ok, %HTTPoison.Response{body: body}}) do
    IO.puts "Response: #{Poison.decode!(body)["status"]}"
  end

  def get_numbers([page: page, per_page: per_page]) do
    url_numbers = "https://protected-wave-98335.herokuapp.com/numbers?page=#{page}&per_page=#{per_page}"
    try do
      HTTPoison.start
      HTTPoison.get!(url_numbers).body
      |> Poison.decode!
      |> Service.NumberDisplayer.display
    rescue
      e in HTTPoison.Error -> e
      ""
    end
  end
end