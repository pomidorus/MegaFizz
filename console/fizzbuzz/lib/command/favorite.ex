defmodule Command.Favorite do
  @moduledoc false

  def execute(options) do
    Service.MegaFizzApi.set_favorite(options)
  end
end