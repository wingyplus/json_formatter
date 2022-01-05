defmodule JsonFormatter do
  @moduledoc """
  A JSON code formatter for `Mix.Tasks.Format`.

  ## Features

  * Support sigils `:j` and `:J`, shipped with `:jason` version
    `1.3` or newer.
  * Works with `.json` file extension.
  * Preserves key order.
  """

  @behaviour Mix.Tasks.Format

  @impl true
  def features(_opts) do
    [sigils: [:J], extensions: [".json"]]
  end

  @impl true
  def format(contents, _opts) do
    contents
    |> Jason.decode!(objects: :ordered_objects)
    |> Jason.encode!(pretty: [indent: "  ", line_separator: "\n", after_colon: " "])
  end
end
