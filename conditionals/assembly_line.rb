class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    production = @speed * 221
    case @speed
    when 1..4
      production
    when 5..8
      production * 0.90
    when 9
      production * 0.80
    else
      production * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end