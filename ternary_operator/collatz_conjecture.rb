class CollatzConjecture
  def self.steps(num)
    raise ArgumentError if num <= 0
    steps = 0
    until num == 1
      num.even? ? num = num/2 : num = 3*num+1
      steps += 1
    end
    steps
  end
end