defmodule AnnotationsTest do
  use ExUnit.Case
  doctest Annotations

  test "greets the world" do
    assert Annotations.hello() == :world
  end
end
