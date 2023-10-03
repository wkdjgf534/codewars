# frozen_string_literal: true

require 'rspec'

# Complete the function that takes two numbers as input, num and nth and return the nth digit of num (counting from right to left).
# Note
# If num is negative, ignore its sign and treat it as a positive value
# If nth is not positive, return -1
# Keep in mind that 42 = 00042. This means that findDigit(42, 5) would return 0

# Examples
# findDigit(5673, 4)  returns 5
# findDigit(129, 2)   returns 2
# findDigit(-2825, 3) returns 8
# findDigit(-456, 4)  returns 0
# findDigit(0, 20)    returns 0
# findDigit(65, 0)    returns -1
# findDigit(24, -8)   returns -1

# The best solution from Codewars
# def find_digit(num, nth)
#   nth < 1 ? -1 : num.abs.to_s[-nth].to_i
# end

def find_digit(num, nth)
  return -1 if nth <= 0

  num_array = num.abs.digits.reverse
  num_array.size >= nth ? num_array[0..-nth].last : 0
end

p find_digit(-2825, 3)

describe '#find_digit' do
  it 'returns -1 if nth number is less or equal 0' do
    expect(find_digit(11_111, 0)).to eq(-1)
  end

  it 'returns 0 if nth value more than the size of an array' do
    expect(find_digit(11_111, 11)).to eq(0)
  end

  it 'returns 1' do
    expect(find_digit(11_111, 2 )).to eq(1)
  end
end
