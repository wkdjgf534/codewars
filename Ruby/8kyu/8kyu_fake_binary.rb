# frozen_string_literal: true

require 'rspec'

# Given a string of digits, you should replace any digit below 5 with '0'
# and any digit 5 and above with '1'. Return the resulting string.

def fake_binary(string) = string.chars.map { |s| s.to_i <= 4 ? '0' : '1' }.join

p fake_binary('444555333666')

describe '#fake_binary' do
  it 'it returns a binary string instead of a string of numbers' do
    expect(fake_binary('444555333666')).to eq('000111000111')
  end

  it 'returns a binary string with 0' do
    expect(fake_binary('01234')).to eq('00000')
  end

  it 'returns a binary string with 1' do
    expect(fake_binary('56789')).to eq('11111')
  end
end
