# frozen_string_literal: true

require 'rspec'

# It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string.
# You're given one parameter, the original string. You don't have to worry with strings with less than two characters.

# The best solution from Codewars
# def remove_char(string)
#   string[1...-1]
# end

def remove_char(string)
  string.split('').slice(1..-2).join
end

p remove_char('test')

describe '#remove_char' do
  it 'removes the first and the last characters of the word' do
    expect(remove_char('eloquent')).to eq('loquen')
  end
end
