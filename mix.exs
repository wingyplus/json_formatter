defmodule JsonFormatter.MixProject do
  use Mix.Project

  def project do
    [
      app: :json_formatter,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.3"}
    ]
  end
end
