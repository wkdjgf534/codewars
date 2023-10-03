# frozen_string_literal: true

require 'rspec'

# Your team is writing a fancy new text editor and you've been tasked with implementing the line numbering.
# Write a function which takes a list of strings and returns each line prepended by the correct number
# The numbering starts at 1. The format is n: string. Notice the colon and space in between.

# Examples:

# number [] => []
# number ['a', 'b', 'c'] => ["1: a", "2: b", "3: c"]

def number(lines)
  lines.map.with_index { |letter, index| "#{index + 1}: #{letter}" }
end

p number(%w[])

describe '#number' do
  it 'returns a new array' do
    expect(number(%w[a b c])).to eq(['1: a', '2: b', '3: c'])
  end

  it 'returns an empty array' do
    expect(number([])).to eq([])
  end
end
