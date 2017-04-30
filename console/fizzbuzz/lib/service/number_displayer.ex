defmodule Service.NumberDisplayer do
  @moduledoc false
  
  def display(numbers) do
    Enum.each(numbers, fn(number) -> style_favorite_number(number["number"], number["favorite"]) end)
  end

  def style_favorite_number(number, favorite) do
    if favorite do
      IO.puts "-*#{number}*-"
    else
      IO.puts number
    end
  end
end