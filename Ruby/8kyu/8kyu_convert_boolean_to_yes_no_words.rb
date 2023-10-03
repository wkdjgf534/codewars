# frozen_string_literal: true

require 'rspec'

# Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

def bool_to_word(bool) = bool ? 'Yes' : 'No'

p bool_to_word(false)

describe '#bool_to_word' do
  it 'returns string Yes' do
    expect(bool_to_word(true)).to eq('Yes')
  end

  it 'returns string No' do
    expect(bool_to_word(false)).to eq('No')
  end
end
