# frozen_string_literal: true

require 'rspec'

# Create a function named divisors/Divisors that takes an integer n > 1 and returns
# an array with all of the integer's divisors(except for 1 and the number itself),
# from smallest to largest. If the number is prime return the string '(integer)
# is prime' (null in C#) (use Either String a in Haskell and Result<Vec<u32>, String> in Rust).
# Example:

# divisors(12) => should return [2,3,4,6]
# divisors(25) => should return [5]
# divisors(13) => should return "13 is prime"

def divisors(n)
  result = (2..n).select { |num| (n % num).zero? }
  result.size == 1 ? "#{n} is prime" : result.first(result.size - 1)
end

p divisors(15)

describe 'divisors' do
  it 'returns an array wich contains divisors' do
    expect(divisors(15)).to match_array([3, 5])
  end

  it 'returns a string if a original number is prime ' do
    expect(divisors(13)).to eq('13 is prime')
  end
end
