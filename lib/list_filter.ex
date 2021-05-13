defmodule ListFilter do
  def call([]), do: 0

  def call(list) do
    list |> clean_list() |> count_odds()
  end

  defp clean_list(list) do
    list |> Enum.map(fn e -> Integer.parse(e) end)
  end

  defp count_odds(list) do
    list |> Enum.filter(fn e -> check_odd(e) end) |> length()
  end

  defp check_odd({value, _}) when rem(value, 2) != 0, do: true

  defp check_odd(:error), do: false

  defp check_odd({_, _}), do: false
end
