class Acronym
  def self.abbreviate(string)
    string = string.gsub('-', ' ')
    string.split.map {|word| word[0].capitalize}.join('')
  end
end