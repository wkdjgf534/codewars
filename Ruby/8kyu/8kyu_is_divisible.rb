# frozen_string_literal: true

require 'rspec'

# Create a function isDivisible(n, x, y) that checks if a number n is divisible by two numbers x AND y.
# All inputs are positive, non-zero digits.

# Example:
# is_divisible(3, 1, 3) => true because 3 is divisible by 1 and 3
# is_divisible(12, 2, 6) => true because 12 is divisible by 2 and 6
# is_divisible(100, 5, 3) => false because 100 is not divisible by 3
# is_divisible(12, 7, 5) => false because 12 is neither divisible by 7 nor 5

def divisible?(num, x, y)
  (num % x).zero? && (num % y).zero?
end

p divisible?(8, 3, 4)

describe '#divisible?' do
  it 'returns \'true\' if a number is divisivle' do
    expect(divisible?(12, 3, 4)).to be_truthy
  end

  it 'returns \'false\' if a number is not divisivle' do
    expect(divisible?(5, 3, 4)).to be_falsey
  end
end
