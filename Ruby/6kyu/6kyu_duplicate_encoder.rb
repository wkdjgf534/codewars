# frozen_string_literal: true

require 'rspec'

# The goal of this exercise is to convert a string to a new string where each character
# in the new string is '('' if that character appears only once in the original string,
# or '')'' if that character appears more than once in the original string. Ignore
# capitalization when determining if a character is a duplicate.

#Examples
# 'din'      =>  "((("
# 'recede '  =>  "()()()"
# 'Success'  =>  ")())())"
# '(( @'     =>  '))(('

# Notes
# Assertion messages may be unclear about what they display in some languages.
# If you read "...It Should encode XXX", the "XXX" is the expected result, not the input!

def duplicate_encode(word)
  new_word = word.downcase
  new_word.chars.map { |x| new_word.count(x) > 1 ? ')' : '(' }.join
end

p duplicate_encode('recede')

describe '#duplicate_encode' do
  it 'returns a encoded string instead of word' do
    expect(duplicate_encode('recede')).to eq('()()()')
  end

  it 'returns a encoded string instead of word with capitalize letter' do
    expect(duplicate_encode('Success')).to eq(')())())')
  end
end
