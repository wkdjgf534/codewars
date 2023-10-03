# frozen_string_literal: true

require 'rspec'

# Given a number, write a function to output its reverse digits. (e.g. given 123 the answer is 321)

# Numbers should preserve their sign; i.e. a negative number should still be negative when reversed.

# Examples

# reverse_number(123) =>  321
# reverse_number(-456) => -654
# reverse_number(1000) => 1

# Two good examples from Codewars
# def reverse_number(number)
#   number.to_s.reverse!.to_i.abs * (number.positive? ? 1 : -1)
# end

# def reverse_number(number)
#   number.abs.digits.join.to_i * (number <=> 0)
# end

def reverse_number(number)
  result = number.to_s.reverse.to_i
  number.negative? ? -result : result
end

p reverse_number(-1000)

describe '#reverse_number' do
  it 'returns positive reversed number' do
    expect(reverse_number(1000)).to eq(1)
  end

  it 'returns negative reversed number' do
    expect(reverse_number(-1000)).to eq(-1)
  end

  it 'returns zero' do
    expect(reverse_number(0)).to eq(0)
  end
end
