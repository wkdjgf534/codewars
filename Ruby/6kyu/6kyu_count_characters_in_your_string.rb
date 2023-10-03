# frozen_string_literal: true

require 'rspec'

# The main idea is to count all the occurring characters in a string.
# If you have a string like aba, then the result should be {'a': 2, 'b': 1}.

# What if the string is empty? Then the result should be empty object literal, {}.

def count_chars(str)
  str.chars.map { |char| [char, str.count(char)] }.to_h
end

p count_chars('test')

describe '#count_chars' do
  it 'returns a hash with characters' do
    expect(count_chars('test')).to eq({ 't' => 2, 'e' => 1, 's' => 1 })
  end
end
