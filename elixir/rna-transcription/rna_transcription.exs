defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
      |> to_string
      |> String.split("")
      |> Enum.map(&dna_to_rna_mapping[&1])
      |> Enum.join("")
      |> to_charlist
  end

  def dna_to_rna_mapping do
  %{
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }
  end
end
