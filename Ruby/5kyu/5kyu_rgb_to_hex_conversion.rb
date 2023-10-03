# frozen_string_literal: true

require 'rspec'

# The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a
# hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255.
# Any values that fall out of that range must be rounded to the closest valid value.

# Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.
# The following are examples of expected output values:

# rgb(255, 255, 255) # => returns FFFFFF
# rgb(255, 255, 300) # => returns FFFFFF
# rgb(0,0,0)         # => returns 000000
# rgb(148, 0, 211)   # => returns 9400D3

# The best solution from Codewars
# def rgb(r, g, b)
#   "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
# end

def rgb(red, green, blue)
  [red, green, blue].map do |num|
    num = num.negative? ? 0 : num > 255 ? 255 : num
    first_number = (num / 16.0)
    second_number = (first_number - first_number.to_i)
    "#{(first_number.floor).to_s(16)}#{(second_number * 16).to_i.to_s(16)}".upcase
  end.join
end

p rgb(0, 0, -20)

describe '#rgb' do
  it "converts rgb(0, 0, 0) to HEX '000000'" do
    expect(rgb(0, 0, 0)).to eq('000000')
  end

  it "converts rgb(-255, 0, -255) to HEX '000000'" do
    expect(rgb(-255, 0, -255)).to eq('000000')
  end

  it "converts rgb(255, 255, 255) to HEX 'FFFFFF'" do
    expect(rgb(255, 255, 255)).to eq('FFFFFF')
  end

  it "converts rgb(355, 255, 355) to HEX 'FFFFFF'" do
    expect(rgb(355, 255, 355)).to eq('FFFFFF')
  end
end
