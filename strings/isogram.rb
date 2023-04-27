class Isogram
  def self.isogram?(input)
    input = input.downcase.delete('-').delete(' ')
    input.chars == input.chars.uniq
  end
end