class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @matrix.split("\n").map do |row|
      row.split.map { |element| element.to_i }
    end
  end

  def columns
    rows.transpose
  end
end
