# frozen_string_literal: true

require 'rspec'

# Given a string, you have to return a string in which each character (case-sensitive) is repeated once.

# double_char("String") ==> "SSttrriinngg"
# double_char("Hello World") ==> "HHeelllloo  WWoorrlldd"
# double_char("1234!_ ") ==> "11223344!!__  "

# Good Luck!

def double_char(str)
  str.chars.map { |char| char * 2 }.join
end

p double_char('1337')

describe '#double_char' do
  it 'returns a new string with double chars' do
    expect(double_char('1337')).to eq('11333377')
  end
end
