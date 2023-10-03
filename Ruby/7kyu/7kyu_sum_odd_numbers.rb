# frozen_string_literal: true

require 'rspec'

# Given the triangle of consecutive odd numbers:

#              1
#           3     5
#        7     9    11
#    13    15    17    19
# 21    23    25    27    29
# ...

# Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:
# row_sum_odd_numbers(1); => 1
# row_sum_odd_numbers(2); => 3 + 5 = 8

# Before row n there are 1+2+..+(n-1) odd numbers. As this is the sum of the elements of an arithmetic progression, it totals
# n(n-1)/2
# The first number in row n is therefore the n(n-1)/2 + 1 th odd number.
# The nth odd number is 2n - 1
# so the first (odd) number in row n is
# 2(n(n-1)/2 + 1) - 1 = n(n-1) + 1
# Using this result, the last (odd) number in row n equals the first number in row n+1 minus 2.
# (n+1)n + 1 - 2 = n(n+1) - 1
# The sum of the n odd numbers in row n (forming an algebraic progression) is therefore
# n(n(n-1) + 1 + n(n+1) - 1)/2 = n^3

def row_sum_odd_numbers(n)
  n**3
end

p row_sum_odd_numbers(13)

describe '#row_sum_odd_numbers' do
  it 'returns sum of all odd numbers in a range' do
    expect(row_sum_odd_numbers(13)).to eq(2197)
  end
end
