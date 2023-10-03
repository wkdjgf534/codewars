# frozen_string_literal: true

require 'rspec'

# Your job is to write a function which increments a string, to create a new string.
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number the number 1 should be appended to the new string.

# Examples:

# increment_string(foo) => foo1
# increment_string(foobar23) => foobar24
# increment_string(foo0042) => foo0043
# increment_string(foo9) => foo10
# increment_string(foo99) => foo100

# Attention: If the number has leading zeros the amount of digits should be considered.

# The best solution from Codewars
# def increment_string(input)
#   input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
# end

def increment_string(input)
  # \d+ - One or more of digits
  # $ - end of the string

  # scan - http://ruby-doc.org/core-2.5.1/String.html#method-i-scan
  # a = "cruel world"
  # a.scan(/\w+/) => ['cruel', 'world']
  # a.scan(/.../) => ['cru', 'el ', 'wor']

  # succ - http://ruby-doc.org/core-2.5.1/String.html#method-i-succ
  # 'THX1138'.succ => 'THX1139'
  # '***'.succ => '**+'
  return input + 1.to_s unless input.scan(/\d+$/).last

  input.gsub(/\d+$/, &:succ)
end

p increment_string('f00bar')

describe '#increment_string' do
  it 'returns a new string with an increased number' do
    expect(increment_string('f00bar099')).to eq('f00bar100')
  end

  it 'returns a new string which contains only one integer' do
    expect(increment_string('')).to eq('1')
  end
end
