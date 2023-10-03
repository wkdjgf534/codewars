# frozen_string_literal: true

require 'rspec'
require 'prime'

# Is Prime

# Define a function isPrime/is_prime() that takes one integer argument and returns true/True or false/False depending
# on if the integer is a prime.

# Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other
# than 1 and itself.

# Example

# is_prime(5) => true

# Assumptions
# You can assume you will be given an integer input.
# You can not assume that the integer will be only positive. You may be given negative numbers as well (or 0).

# A natural number (2, 3, 5, 7, 11, 13, etc.) is called a prime number (or a prime) if it is greater
# than 1 and cannot be written as a product of two natural numbers that are both smaller than it.

# A good solution from Codewar
# def prime?(num)
#   num > 1 && (1..num / 2).select { |n| num % n == 0 }.size == 1 ? true : false
# end

def prime?(num)
  num.prime?
end

p prime?(11)

describe '#prime?' do
  it 'returns true if input number is a prime number' do
    expect(prime?(11)).to eq(true)
  end

  it 'returns false if input number is not a prime number' do
    expect(prime?(4)).to eq(false)
  end
end
