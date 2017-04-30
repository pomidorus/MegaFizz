defmodule Service.MegaFizzApi do
  use HTTPoison.Base
  @moduledoc false
  @url_favorite "https://protected-wave-98335.herokuapp.com/favorite"

  def get_numbers([page: page, per_page: per_page]) do
    url_numbers = "https://protected-wave-98335.herokuapp.com/numbers?page=#{page}&per_page=#{per_page}"
    try do
      HTTPoison.start
      HTTPoison.get!(url_numbers).body
      |> Poison.decode!
      |> display_numbers
    rescue
      e in HTTPoison.Error -> e
      ""
    end
  end

  def display_numbers(numbers) do
    Enum.each(numbers, fn(number) -> IO.puts number["number"] end)
  end
end