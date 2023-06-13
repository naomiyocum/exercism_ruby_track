class InvalidCodonError < StandardError; end

class Translation
  PROTEINS = {
    "Methionine" => ["AUG"],
    "Phenylalanine" => ["UUU", "UUC"],
    "Leucine" => ["UUA", "UUG"],
    "Serine" => ["UCU", "UCC", "UCA", "UCG"],
    "Tyrosine" => ["UAU", "UAC"],
    "Cysteine" => ["UGU", "UGC"],
    "Tryptophan" => ["UGG"],
    "STOP" => ["UAA", "UAG", "UGA"] 
  }
  
  def self.of_rna(strand)
    arr_strands = strand.chars.each_slice(3).to_a.map(&:join)
    proteins = []
    arr_strands.map do |strand|
      protein = PROTEINS.select {|k,v| v.include?(strand)}.keys
      raise InvalidCodonError if protein == []
      protein[0] == "STOP" ? break : proteins << protein
    end

    proteins.flatten
  end
end