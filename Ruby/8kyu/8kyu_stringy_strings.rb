# frozen_string_literal: true

require 'rspec'

# Write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.
# the string should start with a 1.
# a string with size 6 should return :'101010'.
# with size 4 should return : '1010'.
# with size 12 should return : '101010101010'.
# The size will always be positive and will only use whole numbers.

def stringy(size)
  size.times.map{ |n| n.even? ? '1' : '0' }.join
end

p stringy(3)

describe '#stringy' do
  it 'returns a string, which contains number sequence of zero and one' do
    expect(stringy(3)).to eq('101')
  end
end
