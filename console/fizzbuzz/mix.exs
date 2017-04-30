defmodule FizzBuzz.Mixfile do
  use Mix.Project

  def project do
    [app: :fizzbuzz,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: [main_module: FizzBuzz],
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger, :httpoison]]
  end

  defp deps do
    [{:httpoison, "~> 0.11.1"}, {:poison, "~> 3.0"}]
  end
end
