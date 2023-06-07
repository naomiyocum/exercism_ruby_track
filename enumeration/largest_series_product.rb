class Series
  attr_reader :input
  
  def initialize(input)
    @input = input
  end

  def largest_product(span)
    raise ArgumentError if span > input.length || input.match(/\D/)
    input.chars.each_cons(span).to_a.map {|a| a.map(&:to_i).inject(:*)}.max
  end
end

# input.match(/\D/) or input.scan(/[a-z]/).any?