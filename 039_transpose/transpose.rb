class Transpose
  def self.transpose(input)
    split = input.split("\n")
    max_length = split.map(&:length).max

    
    split
      .map {|line| line.gsub(" ", "~").ljust(max_length, ' ').chars}
      .transpose
      .map {|n| n.join('').rstrip.gsub("~", " ")}
      .join("\n")
  end
end