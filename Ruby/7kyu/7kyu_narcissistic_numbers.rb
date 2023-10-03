# frozen_string_literal: true

require 'rspec'

# A Narcissistic Number is a number of length n in which the sum of its digits to the power of n is equal to
# the original number. If this seems confusing, refer to the example below.

# Ex: 153, where n = 3 (number of digits in 153)
# 13 + 53 + 33 = 153

# Write a method is_narcissistic(i) (in Haskell: isNarcissistic :: Integer -> Bool) which returns
# whether or not i is a Narcissistic Number.

# A good variant from codewars
# def narcissistic?(number)
#   number == number.digits.map { |d| d**number.digits.size }.sum
# end

def narcissistic?(number)
  p array = number.digits
  array.map { |n| n**array.count }.reduce(&:+) == number
end

p narcissistic?(43)

describe '#narcissistic?' do
  it 'returns true if a given number is the narcissistic number' do
    expect(narcissistic?(153)).to be_truthy
  end

  it 'returns false if a given number is not the narcissistic number' do
    expect(narcissistic?(12)).to be_falsey
  end
end
