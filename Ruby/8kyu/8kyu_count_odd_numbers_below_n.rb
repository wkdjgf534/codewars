# frozen_string_literal: true

require 'rspec'

# Given a number n, return the number of positive odd numbers below n, EASY!

# odd_count(7) => 3  # [1, 3, 5]
# odd_count(15) => 7 # [1, 3, 5, 7, 9, 11, 13]

def odd_count(number)
  # step - http://ruby-doc.org/core-2.5.1/Range.html#method-i-step
  # Iterates over the range, passing each nth element to the block. If begin and end are numeric,
  # n is added for each iteration.
  # (1..number - 1).step(2).count
  number / 2
end

p odd_count(7)

describe '#odd_count' do
  it 'returns the value of odd numbers in the current range' do
    expect(odd_count(7)).to eq(3)
  end
end
