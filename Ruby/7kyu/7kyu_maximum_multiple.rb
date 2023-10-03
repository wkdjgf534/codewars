# frozen_string_literal: true

require 'rspec'

# Task

# Given a Divisor and a Bound , Find the largest integer N , Such That ,
# Conditions :
# N is divisible by divisor
# N is less than or equal to bound
# N is greater than 0.

# Notes:
# The parameters (divisor, bound) passed to the function are only positive values .
# It's guaranteed that a divisor is Found .

# Input >> Output Examples

# maxMultiple (2,7) ==> return (6)
# Explanation:
# (6) is divisible by (2) , (6) is less than or equal to bound (7) , and (6) is > 0 .

# maxMultiple (10,50)  ==> return (50)
# Explanation:
# (50) is divisible by (10) , (50) is less than or equal to bound (50) , and (50) is > 0 .*

# maxMultiple (37,200) ==> return (185)
# Explanation:
# (185) is divisible by (37) , (185) is less than or equal to bound (200) , and (185) is > 0 .

# These are 2 best solutions from Codewar
# def max_multiple(divisor, bound)
#   bound - bound % divisor
# end

# def max_multiple(divisor, bound)
#   bound / divisor * divisor
# end

def max_multiple(divisor, bound)
  (1..bound)
    .to_a
    .select { |b| b if (b % divisor).zero? }
    .last
end

p max_multiple(2, 7)

describe '#calculate' do
  it 'returns last acceptable bound' do
    expect(max_multiple(2, 7)).to eq(6)
  end

  it 'returns 1 when divisor and bound are equal' do
    expect(max_multiple(1, 1)).to eq(1)
  end
end
