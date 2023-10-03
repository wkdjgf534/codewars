# frozen_string_literal: true

require 'rspec'

# Find the last element of the given argument(s).
# Examples

# last([1, 2, 3, 4]) =>  4
# last('xyz')        => 'z'
# last(1, 2, 3, 4)   =>  4

# In javascript and CoffeeScript a list will be an array, a string or the list of arguments.

def last(*args)
  # *args - it returns an array
  args.last.is_a?(String) ? args.join[-1] : args.flatten.last
end

p last(1, 'b', 3, 'd', 5)
p last('abcde')
p last([1, 'b', 3, 'd', 5])

describe '#last' do
  it 'returns the last letter from a string' do
    expect(last('abcde')).to eq('e')
  end

  it 'returns the last element of an array' do
    expect(last([1, 'b', 3, 'd', 5])).to eq(5)
  end

  it 'returns the last value from a row of values' do
    expect(last(1, 'b', 3, 'd', 5)).to eq(5)
  end
end
