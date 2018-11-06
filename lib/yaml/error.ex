defmodule YAML.ParsingError do
  defexception [:message, :location, :code]

  def format([error | _rest]), do: format(error)
  def format({_type, _level, message, loc1, loc2, _code, _token, _other}) do
    {:invalid_yaml, [message: message, location: {loc1, loc2}]}
  end

end
