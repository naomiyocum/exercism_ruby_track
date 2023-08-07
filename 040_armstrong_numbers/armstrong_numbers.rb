class ArmstrongNumbers
  def self.include?(num)
    length = num.digits.length
    num.digits.sum {|n| n ** length} == num
  end
end