class Crypto
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def ciphertext
    text = text.gsub(/\W+/, '').downcase
    return "" if text.length == 0
    r, c = square_vars(text.length)
    text = text.concat(" " * (r * c - text.length)) if text.length < r * c
    text
      .chars
      .each_slice(c)
      .to_a
      .transpose
      .map(&:join)
      .join(" ")
  end

  def square_vars(length)
    num = Math.sqrt(length).round
    arr = [num, num]
    if arr[0] * arr[1] < length || arr[1] < arr[0] || arr[1] - arr[0] > 1
      arr[1] += 1
    end
    arr
  end
end