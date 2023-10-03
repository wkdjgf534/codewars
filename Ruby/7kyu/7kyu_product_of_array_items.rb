# frozen_string_literal: true

require 'rspec'

# Calculate the product of all elements in an array.

# If the array is nil or is empty, the function should return nil.

# Two excellent varians from Codewars
# def product(array)
#   # & - http://mitrev.net/ruby/2015/11/13/the-operator-in-ruby/
#   array&.reduce(:*)
# end

# def product(array)
#   array.reduce(:*) if array.is_a? Array
# end

def product(array)
  array.nil? || array.empty? ? nil : array.reduce(&:*)
end

p product([2, 2, 2, 2, 2, 2])

describe '#product' do
  it 'multiplies all elements of array' do
    expect(product([2, 2, 2, 2, 2, 2])).to eq(64)
  end

  it 'returns nil if an array is empty or nil' do
    expect(product([])).to be_nil
  end
end
