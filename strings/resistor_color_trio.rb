class ResistorColorTrio
  attr_reader :colors
  
  def initialize(colors)
    @colors = colors
  end

  def color_codes
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

  def label
    "Resistor value: #{value}"
  end

  def value
    values = colors.map {|c| color_codes[c]}
    ohms = (values.take(2).join + ('0' * values.last)).to_i
    ohms > 1000 ? "#{ohms / 1000} kiloohms" : "#{ohms} ohms"
  end
end