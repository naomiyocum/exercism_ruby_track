class Luhn
  def self.valid?(n)
    return false if n.delete(' ').length <= 1 || n.count("a-zA-Z") > 0
    n
      .delete(' ')
      .reverse
      .chars
      .map(&:to_i)
      .map
      .with_index do |n, index|
        index % 2 != 0 ? ((n * 2) > 9 ? (n * 2 - 9) : (n * 2)) : n
      end.sum % 10 == 0
  end
end