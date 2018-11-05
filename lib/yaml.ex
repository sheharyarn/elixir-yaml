defmodule YAML do
  @moduledoc """
  Documentation for YAML.
  """

  def parse!(binary) do
    YAML.Decoder.decode!(binary)
  end
end
