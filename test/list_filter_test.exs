defmodule ListFilterTest do
  use ExUnit.Case

  describe "Teste para validar filtro de uma lista por número impares" do
    test "greets the world" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      expected_result = 3

      assert ListFilter.call(list) == expected_result
    end
  end
end
