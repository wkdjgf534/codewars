# frozen_string_literal: true

require 'rspec'

# Your Job

# Find the sum of all multiples of n below m
# Keep in Mind
# n and m are natural numbers (positive integers)
# m is excluded from the multiples

# Examples

# sum_mul(2, 9)   => 2 + 4 + 6 + 8 = 20
# sum_mul(3, 13)  => 3 + 6 + 9 + 12 = 30
# sum_mul(4, 123) => 4 + 8 + 12 + ... = 1860
# sum_mul(4, -7)  => "INVALID"

# The best solution from Codewars
# def sum_mul(number1, number2)
#   number1 <= number2 ? (number1...number2).step(number1).reduce(:+) : 'INVALID'
# end

def sum_mul(number1, number2)
  return 'INVALID' if number1 >= number2
  # step - http://ruby-doc.org/core-2.5.1/Range.html#method-i-step
  number1.step(number2, number1).inject(&:+)
end

p sum_mul(4, -7)

describe '#sum_mul' do
  it 'returns the sum of numbers in range' do
    expect(sum_mul(2, 9)).to eq(20)
  end

  it 'returns the string \'INVALID\' if the number2 less or equal the number1 ' do
    expect(sum_mul(4, -7)).to eq('INVALID')
  end
end
