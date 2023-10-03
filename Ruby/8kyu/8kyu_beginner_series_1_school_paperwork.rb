# frozen_string_literal: true

require 'rspec'

# Your classmates asked you to copy some paperwork for them. You know that there are 'n'
# classmates and the paperwork has 'm' pages.
# Your task is to calculate how many blank pages do you need.

# Example:
# paperwork(5, 5) == 25

# NOTE: if n or m < 0 return 0! Waiting for translations and Feedback! Thanks!

def paperwork(n, m)
  n.negative? || m.negative? ? 0 : n * m
end

p paperwork(10, 10)

describe '#paperwork' do
  it 'returns the total amount of copies' do
    expect(paperwork(10, 10)).to eq(100)
  end

  it 'returns 0 if they don\'t want any copies' do
    expect(paperwork(0, 10)).to eq(0)
  end

  it 'returns 0 if a value is negative' do
    expect(paperwork(12, -12)).to eq(0)
  end
end
