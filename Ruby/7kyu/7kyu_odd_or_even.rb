# frozen_string_literal: true

require 'rspec'

# Task:

# Given an array of numbers (a list in groovy), determine whether the sum of all of the numbers is odd or even.

# Give your answer in string format as 'odd' or 'even'.

# If the input array is empty consider it as: [0] (array with a zero).
# Example:

# odd_or_even({0}, 1) => 'even'
# odd_or_even({2, 5, 34, 6}, 4) => 'odd'
# odd_or_even({0, -1, -5}, 3) => 'even'

# Have fun!

def odd_or_even(array)
  array.sum.even? ? 'even' : 'odd'
end

p odd_or_even([-1023, 1, -2])

describe '#odd_or_even' do
  it 'returns the stribg \'even\' if a sum of an array is even' do
    expect(odd_or_even([-1023, 1, -2])).to eq('even')
  end

  it 'returns the stribg \'odd\' if a sum of an array is odd' do
    expect(odd_or_even([-1023, 1, 3])).to eq('odd')
  end
end
