# frozen_string_literal: true

require 'rspec'

def sum_two_smallest_numbers(numbers)
  # min - https://ruby-doc.org/core-2.5.1/Array.html#method-i-min
  # ary = %w[albatross dog horse]
  # ary.min(2) => ["albatross", "dog"]
  numbers.min(2).sum
end

p sum_two_smallest_numbers([5, 8, 12, 18, 22])

describe '#sum_two_smallest_numbers' do
  it 'returns the number 13' do
    expect(sum_two_smallest_numbers([5, 8, 12, 18, 22])).to eq(13)
  end

  it 'returns the number 19' do
    expect(sum_two_smallest_numbers([7, 15, 12, 18, 22])).to eq(19)
  end
end
