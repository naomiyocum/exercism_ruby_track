require 'Prime'

class Prime
  def self.nth(n)
    raise ArgumentError.new() if n == 0
    primes = []
    num = 1
    until primes.length == n
      primes << num if num.prime?
      num += 1
    end
    primes[n - 1]
  end
end