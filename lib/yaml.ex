defmodule YAML do
  @moduledoc """
  Documentation for YAML.
  """

  def decode!(binary) do
    YAML.Parser.parse!(binary)
  end
end
