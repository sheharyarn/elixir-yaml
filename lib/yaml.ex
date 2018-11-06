defmodule YAML do
  @moduledoc """
  Documentation for YAML.
  """

  def decode(binary) do
    {:ok, YAML.Parser.parse!(binary)}
  catch
    {:yamerl_exception, error} ->
      {:error, YAML.ParsingError.format(error)}
  end

  def decode!(binary) do
    YAML.Parser.parse!(binary)
  end
end
