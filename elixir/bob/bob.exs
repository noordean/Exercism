defmodule Bob do
  def hey(input) do
    cond do
      upcase?(input) && String.ends_with?(input, "?") -> "Calm down, I know what I'm doing!"
      empty?(input) -> "Fine. Be that way!"
      upcase?(input) -> "Whoa, chill out!"
      String.ends_with?(input, "?") -> "Sure."
      true -> "Whatever."
    end
  end

  defp upcase?(input) do
    String.upcase(input) == input && contains_letters?(input)
  end

  defp contains_letters?(input) do
    String.upcase(input) != String.downcase(input)
  end

  defp empty?(input) do
    String.trim(input) == ""
  end
end
