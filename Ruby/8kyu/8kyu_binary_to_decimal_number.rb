# frozen_string_literal: true

require 'rspec'

# Complete the function which converts a binary number (given as a string) to a decimal number.

def bin_to_dec(str)
  # http://ruby-doc.org/core-2.5.1/String.html#method-i-to_i
  # '1100101'.to_i(2) => 101
  str.to_i(2)
end

p bin_to_dec('110')

describe '#bin_to_dec' do
  it 'converts 110 to 6' do
    expect(bin_to_dec('110')).to eq(6)
  end

  it 'converts 11 to 3' do
    expect(bin_to_dec('11')).to eq(3)
  end
end
