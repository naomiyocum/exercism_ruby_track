class Matrix
  attr_reader :matrix
  
  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    matrix.each_line.map do |row|
      row.split.map(&:to_i)
    end
  end

  def columns
    rows.transpose
    # transform rows into columns, given a perfect grid
  end
end


