defmodule Command.Numbers do
  @moduledoc false

  def execute(options) do
    Service.MegaFizzApi.get_numbers(options)
  end
end