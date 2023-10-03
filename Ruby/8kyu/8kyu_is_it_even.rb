# frozen_string_literal: true

require 'rspec'

# In this Kata we are passing a number (n) into a function.
# Your code will determine if the number passed is even (or not).
# The function needs to return either a true or false.
# Numbers may be positive or negative, integers or floats.
# Floats are considered UNeven for this kata.

# The best solution from Codewars
# def test_even(n)
#   (n % 2).even?
# end

def test_even(num)
  (num % 2).zero?
end

p test_even(-4)

describe '#test_even' do
  it 'returns true if a numbers is even' do
    expect(test_even(2)).to be_truthy
  end

  it 'returns false if a numbers is odd' do
    expect(test_even(1)).to be_falsey
  end
end
