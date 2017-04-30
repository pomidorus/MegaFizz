defmodule Command.Showhelp do
  @moduledoc false

  def execute do
    IO.puts "`help` - show this message\r"
    IO.puts "`numbers --page=PAGE --per-page=PER_PAGE` - show list of fizzbuzz numbers with params PAGE(Integer) and PER_PAGE(Integer)\r"
    IO.puts "`favorite --number=NUMBER --favorited=FAVORITED --page=PAGE --per-page=PER_PAGE` - Favorite or unfavorite NUMBER(Iteger) with flag FAVORITED and params PAGE(Integer) and PER_PAGE(Integer)"
  end
end