# frozen_string_literal: true

require 'rspec'

#Your task is to make a function that can take any non-negative integer as a argument and
# return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
# Examples:
# Input: 21445 Output: 54421
# Input: 145263 Output: 654321
# Input: 1254859723 Output: 9875543221

def descending_order(numbers)
  numbers.digits.sort.reverse.join.to_i
end

p descending_order(345_123)

describe '#descending_order' do
  it 'returns a new number' do
    expect(descending_order(345_123)).to eq(543_321)
  end
end
