class SumOfMultiples
  attr_reader :scores

  def initialize(*args)
    @scores = args
  end

  def to(level)
    (1..(level - 1)).select {|num| @scores.any? {|score| num % score == 0}}.sum
  end
end