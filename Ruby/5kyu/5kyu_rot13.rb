# frozen_string_literal: true

require 'rspec'

# ROT13 is a simple letter substitution cipher that replaces a letter with the
# letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

# Create a function that takes a string and returns the string ciphered with Rot13.
# If there are numbers or special characters included in the string,
# they should be returned as they are. Only letters from the latin/english alphabet
# should be shifted, like in the original Rot13 "implementation".

# https://www.dotnetperls.com/rot13-ruby
# https://medium.com/@huy.phung.sw/solved-rot13-f83c6042d20c
def rot13(string)
  string.tr('A-Za-z', 'N-ZA-Mn-za-m')
end

p rot13('Test')

describe '#rot13' do
  it 'encrypts string Test and return Grfg' do
    expect(rot13('Test')).to eq('Grfg')
  end

  it 'encrypts string test and return grfg' do
    expect(rot13('test')).to eq('grfg')
  end
end
