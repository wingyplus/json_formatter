defmodule JsonFormatter.MixProject do
  use Mix.Project

  def project do
    [
      app: :json_formatter,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: "A JSON code formatter for Mix.Tasks.Format."
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.3"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: "json_formatter",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/wingyplus/json_formatter"}
    ]
  end
end
