# frozen_string_literal: true

require 'rspec'

# Your task is to create functionisDivideBy (or is_divide_by) to check if
# an integer number is divisible by each out of two arguments.

# A few cases:
# (-12, 2, -6) => true
# (-12, 2, -5) => false
# (45, 1, 6) => false
# (45, 5, 15) => true
# (4, 1, 4) => true
# (15, -5, 3) => true

def divide_by?(number, a, b)
  (number % a).zero? && (number % b).zero?
end

p divide_by?(-12, 2, -6)

describe '#divide_by?' do
  it 'returns true' do
    expect(divide_by?(-12, 2, -6)).to be_truthy
  end

  it 'returns false' do
    expect(divide_by?(45, 1, 6)).to be_falsey
  end
end
