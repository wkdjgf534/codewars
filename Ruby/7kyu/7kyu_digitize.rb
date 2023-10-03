# frozen_string_literal: true

require 'rspec'

# Given a non-negative integer, return an array / a list of the individual digits in order.
# Examples:

# digitize(123) => [1,2,3]
# digitize(1) => [1]
# digitize(8675309) => [8,6,7,5,3,0,9]

def digitize(num)
  num.digits.reverse
end

p digitize(1000)

describe '#digitize' do
  it 'returns an array' do
    expect(digitize(100)).to match_array([1, 0, 0])
  end
end
