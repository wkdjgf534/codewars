# frozen_string_literal: true

require 'rspec'

# Write a function which takes a number and returns the corresponding ASCII char for that value.
# Example:
# get_char(65) # => 'A'
# For ASCII table, you can refer to http://www.asciitable.com/

# The best solution from codewars
# define_method :get_char, &:chr

def get_char(c)
  c.chr
end

p get_char(65)

describe '#get_char' do
  it 'it returns a character' do
    expect(get_char(65)).to eq('A')
  end
end
