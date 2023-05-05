class PhoneNumber
  def self.clean(number)
    clean_num = number.scan(/\b[\d]+\b/).join
    if clean_num.length == 11 && clean_num[0] == "1"
      clean_num = clean_num[1..]
    elsif clean_num.length == 11 && clean_num[0] != "1"
      return nil
    end
    return nil if clean_num.length > 11 || clean_num.length < 10 || clean_num[0] == '1' || clean_num[0] == '0' || clean_num[3] == '1' || clean_num[3] == '0'
    clean_num
  end
end