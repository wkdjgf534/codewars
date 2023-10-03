# frozen_string_literal: true

require 'rspec'

# You might know some pretty large perfect squares. But what about the NEXT one?
# Complete the findNextSquare method that finds the next integral perfect square
# after the one passed as a parameter. Recall that an integral perfect square is an
# integer n such that sqrt(n) is also an integer.
# If the parameter is itself not a perfect square, than -1 should be returned.
#  You may assume the parameter is positive.

# Examples:
# find_next_square(121) -> 144
# find_next_square(625) -> 676
# find_next_square(114) -> -1 since 114 is not a perfect

def find_next_square(sq)
  (Math.sqrt(sq) % 1).zero? ? (Math.sqrt(sq).ceil + 1)**2 : -1
end

p find_next_square(144)

describe '#find_next_square' do
  it 'returns the next square for perfect squares' do
    expect(find_next_square(141)).to eq(144)
  end

  it 'returns -1 for numbers which aren\’t perfect squares' do
    expect(find_next_square(155)).to eq(-1)
  end
end
