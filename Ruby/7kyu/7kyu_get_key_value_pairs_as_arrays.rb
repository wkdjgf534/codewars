# frozen_string_literal: true

require 'rspec'

# Complete the keysAndValues function so that it takes in an object and returns the keys and values as separate arrays.
# Example:
# keys_and_values({a: 1, b: 2, c: 3}) => [[:a, :b, :c], [1, 2, 3]]
# Style Points (JS/CoffeeScript only): This kata only tests for data that uses object literal notation (simple objects).
# For extra style, can you get your method to check for objects that extend their prototype?

def keys_and_values(data)
  [data.keys, data.values]
end

p keys_and_values(a: 1, b: 2, c: 3)

describe '#keys_and_values' do
  it 'returns a two-dimensional array with keys and values' do
    expect(keys_and_values(a: 1, b: 2, c: 3)).to match_array([%i[a b c], [1, 2, 3]])
  end
end
