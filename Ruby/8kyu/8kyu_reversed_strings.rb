# frozen_string_literal: true

require 'rspec'

# Complete the solution so that it reverses the string value passed into it.

# reverse_string('World') => 'dlroW'

def reverse_string(string) = string.reverse

p reverse_string('World')

describe '#reverse_string' do
  it 'returns a reversed word' do
    expect(reverse_string('World')).to eq('dlroW')
  end
end
