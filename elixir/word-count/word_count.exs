defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
      |> split_sentence
      |> get_words
      |> extract_into_map
  end

  defp split_sentence(sentence) do
    String.split(sentence, ~r{[ _,!&@$%^&:]}, trim: true)
  end

  defp get_words(split_sentence) do
    split_sentence
      |> Enum.map(&String.downcase(&1))
  end

  defp extract_into_map(words) do
    words_in_tuple = for word <- words, do: {word, Enum.count(words, &(&1 === word))}
    words_in_tuple
      |> Enum.into(%{})
  end
end
