defmodule Service.NumberDisplayer do
  @moduledoc false
  
  def display(numbers) do
    Enum.each(numbers, fn(number) -> IO.puts(style_favorite_number(number["number"], number["favorite"])) end)
  end


  @doc ~S"""
    Styles number in the output on favorite flag.

    ## Examples

        iex> Service.NumberDisplayer.style_favorite_number 1, true
        "-*1*-"

        iex> Service.NumberDisplayer.style_favorite_number 1, false
        1

    """
  def style_favorite_number(number, favorite) do
    if favorite do
      "-*#{number}*-"
    else
      number
    end
  end
end