# frozen_string_literal: true

require 'rspec'

# Define a new instance method on the Array class called second, which returns the
# second item in an array (similar to the way .first and .last work in Ruby).

# If there is no element with index 1 in the array, return nil in Ruby, or undefined in Javascript.
# Ruby Example

# [3, 4, 5].second => 4
# [].second => nil

# Javascript Example
# [1, 2, 3].second(); => 2
# [].second(); => undefined

class Array
  def second
    self[1]
  end
end

p [12, 23, 34].second

describe '.second' do
  it 'returns the second element of an array' do
    expect([1, 2, 3].second).to eq(2)
  end

  it 'returns nil if an array is empty' do
    expect([].second).to eq(nil)
  end
end
