# frozen_string_literal: true

require 'rspec'

# Complete the function which takes two arguments and returns all numbers which are
# divisible by the given divisor. First argument is an array of numbers and the second is the divisor.
# Example

# divisible_by([1, 2, 3, 4, 5, 6], 2) == [2, 4, 6]

def divisible_by(numbers, divisor)
  numbers.select { |num| (num % divisor).zero? }
end

p divisible_by([1, 2, 3, 4, 5, 6], 2)

describe '#divisible_by' do
  it 'returns an array of numbers' do
    expect(divisible_by([1, 2, 3, 4, 5, 6], 2)).to match_array([2, 4, 6])
  end
end
