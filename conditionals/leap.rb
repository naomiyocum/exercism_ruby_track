class Year
  def self.leap?(year)
    true if year % 4 == 0 unless year % 100 == 0 && year % 400 != 0
  end
end