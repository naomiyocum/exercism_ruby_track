class Scrabble
  attr_reader :word
  
  def initialize(word)
    @word = word.upcase
  end

  def score_board
    {
      /[AEIOULNRST]/ => 1,
      /[DG]/ => 2,
      /[BCMP]/ => 3,
      /[FHVWY]/ => 4,
      /[K]/ => 5,
      /[JX]/ => 8,
      /[QZ]/ => 10
    }
  end

  def score
    score_board.sum {|letter, value| word.scan(letter).count * value} 
  end
end