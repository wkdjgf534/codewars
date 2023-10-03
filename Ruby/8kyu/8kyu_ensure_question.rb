# frozen_string_literal: true

require 'rspec'

# Given a string, write a function that returns the string with a question mark ("?")
# appends to the end, unless the original string ends with a question mark,
# in which case, returns the original string.

# ensure_question('Yes')  => 'Yes?'
# ensure_question('No?')  => 'No?'

# def ensure_question(str)
#   # end_with? - http://ruby-doc.org/core-2.5.1/String.html#method-i-end_with-3F
#   # Returns true if str ends with one of the suffixes given.
#   # "hello".end_with?("ello") => true
#   str.end_with?('?') ? str : str + '?'
# end

def ensure_question(str)
  str[-1] == '?' ? str : str + '?'
end

p ensure_question('Yes')

describe '#ensure_question' do
  it 'adds a question mark' do
    expect(ensure_question('no')).to eq('no?')
  end

  it 'returns the same string' do
    expect(ensure_question('no?')).to eq('no?')
  end
end
