defmodule FizzBuzz do
  use Application
  @moduledoc """
  Documentation for FizzBuzz.
  """

  def start(_type, _args) do
    IO.puts 'Hello'
  end

  @doc """
  Hello world.

  ## Examples

      iex> FizzBuzz.hello
      :world

  """
  def hello do
    :world
  end
end
