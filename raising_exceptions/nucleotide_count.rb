class Nucleotide
  attr_reader :dna
  
  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    raise ArgumentError.new("INVALID") if dna.match(/^[GCTA]+$/) == nil && !dna.empty?
    Nucleotide.new(dna)
  end

  def count(nucleotide)
    dna.count(nucleotide)
  end

  def histogram
    nucleotide_count = {
      'A' => 0,
      'T' => 0,
      'C' => 0,
      'G' => 0
    }
    dna.chars.each {|nucleotide| nucleotide_count[nucleotide] += 1}
    nucleotide_count
  end
end