class Anagram
  attr_reader :word
  
  def initialize(word)
    @word = word.downcase
  end

  def match(arr_words)
    arr_words.filter_map {|w| w if w.downcase.chars.sort == word.chars.sort unless w.downcase == word.downcase}
  end
end