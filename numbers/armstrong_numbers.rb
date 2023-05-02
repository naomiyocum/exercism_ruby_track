class ArmstrongNumbers
  def self.include?(num)
    length = num.digits.length
    num.digits.sum {|n| n ** length} == num
  end
end

p ArmstrongNumbers.include?(9475) # should be false
p ArmstrongNumbers.include?(9_926_315) # should be true
