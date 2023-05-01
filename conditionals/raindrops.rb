class Raindrops
  RAINDROPS = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
  
  def self.convert(n)
    drops = ""
    RAINDROPS.map {|num, word| drops += word if n % num == 0}
    drops.empty? ? n.to_s : drops
  end
end