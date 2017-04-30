defmodule FizzBuzz do
  @moduledoc """
  Documentation for FizzBuzz.
  """

  def main(args) do
    args |> parse_args |> process
  end

  defp parse_command([["help"], []]) do
    Command.Showhelp.execute
  end

  defp parse_command([["numbers"], options]) do
    Command.Numbers.execute(options)
  end

  defp parse_command([["favorite"], options]) do
    Command.Favorite.execute(options)
  end

  def process([[], []]) do
    IO.puts "No commands given"
  end

  def process([commands, options]) do
    [commands, options]
    |> parse_command
  end

  defp parse_args(args) do
    {options, commands, _} = OptionParser.parse(args,
      switches: [
        page: :integer,
        per_page: :integer,
        number: :integer,
        favorited: :boolean
      ]
    )

    [commands, options]
  end
end
