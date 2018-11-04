defmodule YAMLTest do
  use ExUnit.Case
  doctest YAML

  test "greets the world" do
    assert YAML.hello() == :world
  end
end
