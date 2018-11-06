defmodule YAML do
  @moduledoc """
  Documentation for YAML.
  """

  def decode(binary) do
    {:ok, YAML.Parser.parse!(binary)}
  catch
    {:yamerl_exception, error} -> YAML.ParsingError.build_tuple(error)
  end

  def decode!(binary) do
    YAML.Parser.parse!(binary)
  catch
    {:yamerl_exception, error} ->
      error = YAML.ParsingError.build_error(error)
      reraise(error, __STACKTRACE__)
  end

end
