class ETL
  def self.transform(org)
    org.each_with_object({}) do |(score, letters), new|
      letters.map {|letter| new[letter.downcase] = score}
    end
  end
end