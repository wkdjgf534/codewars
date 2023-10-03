# frozen_string_literal: true

require 'rspec'

# Create a method that accepts an array of names, and returns an array of each name with its first letter capitalized.
# Example
# cap_me(['jo', 'nelson', 'jurie']) => ['Jo', 'Nelson', 'Jurie']
# cap_me(['KARLY', 'DANIEL', 'KELSEY']) => ['Karly', 'Daniel', 'Kelsey']

def cap_me(array)
  array.map(&:capitalize)
end

p cap_me(%w[KARLY DANIEL KELSEY])

describe '#cap_me' do
  it 'returns a new array with capitalized names' do
    expect(cap_me(%w[karly daniel kelsey])).to match_array(%w[Karly Daniel Kelsey])
  end
end
