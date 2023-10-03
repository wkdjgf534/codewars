# frozen_string_literal: true

require 'rspec'

# Complete the function which converts hex number (given as a string) to a decimal number.

def hex_to_dec(hex_string)
  hex_string.to_i(16)
end

p hex_to_dec('1C')

describe '#hex_to_dec' do
  it 'converts number from one sysyem to another correctly' do
    expect(hex_to_dec('10')).to eq(16)
  end
end
