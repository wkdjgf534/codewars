# frozen_string_literal: true

require 'rspec'

# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your
# most secret question is still correct. However, since someone could look over your shoulder, you don't want
# that shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# Examples

# maskify('4556364607935616') => '############5616'
# maskify('64607935616')      => '#######5616'
# maskify('1')                => '1'
# maskify('')                 => ''

def maskify(string)
  string.gsub(/\w(?=\w{4})/, '#')
end

p maskify('4556364607935616')

describe '#maskify' do
  it 'hides chars the most part of chars in the long string' do
    expect(maskify('4556364607935616')).to eq('############5616')
  end

  it 'does not hide string if length equal or less than 4 chars' do
    expect(maskify('5616')).to eq('5616')
  end

  it 'returns an empty string if you send an empty string' do
    expect(maskify('')).to eq('')
  end
end
