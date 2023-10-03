# frozen_string_literal: true

require 'rspec'

# Write a class function named repeat() that takes two arguments (a string and a long integer),
# and returns a new string where the input string is repeated that many times. For example:

# repeater("a", 5) => 'aaaaa'

def repeater(string, n)
  string * n
end

p repeater('a', 5)

describe '#repeater' do
  it 'repeats a letter \'a\' five times' do
    expect(repeater('a', 5)).to eq('aaaaa')
  end
end
