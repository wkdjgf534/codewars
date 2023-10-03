# frozen_string_literal: true

require 'rspec'

# Create a function called shortcut to remove all the lowercase vowels in a given string.
# Examples

# shortcut("codewars") => cdwrs
# shortcut("goodbye") => gdby

# Don't worry about uppercase vowels.

# def shortcut(s)
#   # delete - http://ruby-doc.org/core-2.6/String.html#method-i-delete
#   # Returns a copy of str with all characters in the intersection of its arguments deleted.
#   # "hello".delete('l', 'lo') => 'heo'
#   s.delete('aieou')
# end

def shortcut(str)
  str.tr('aeiou', '')
end

p shortcut('HellO mY World agAin')

describe '#shortcut' do
  it 'returns a new string without lowercase vowels' do
    expect(shortcut('Hello')).to eq('Hll')
  end
end
