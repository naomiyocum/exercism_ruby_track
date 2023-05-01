class ResistorColorDuo
  def self.color_codes
    {
      "black" => 0,
      "brown" => 1,
      "red" => 2,
      "orange" => 3,
      "yellow" => 4,
      "green" => 5,
      "blue" => 6,
      "violet" => 7,
      "grey" => 8,
      "white" => 9
    }
  end
  
  def self.value(args)
    a, b = args
    (color_codes[a].to_s + color_codes[b].to_s).to_i
  end
end