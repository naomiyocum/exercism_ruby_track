class BirdCount
  attr_reader :bird_week

  def initialize(birds_per_day)
    @bird_week = birds_per_day
  end

  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end
  

  def yesterday
    bird_week[-2]
  end

  def total
    bird_week.sum
  end

  def busy_days
    bird_week.count {|day| day >= 5}
  end

  def day_without_birds?
    bird_week.any? {|day| day == 0}
  end
end