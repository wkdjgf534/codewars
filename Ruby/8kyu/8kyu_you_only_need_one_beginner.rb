# frozen_string_literal: true

require 'rspec'

# You will be given an array (a) and a value (x). All you need to do is check whether
# the provided array contains the value.

# Array can contain numbers or strings. X can be either. Return true if the array contains the value, false if not.

def check?(array, element)
  array.include?(element)
end

p check?(['when\'s', 'the', 'next', 'Katathon?', 9, 7], 'the')

describe '#check?' do
  it 'returns true if an array contains a element' do
    expect(check?(['when\'s', 'the', 'next', 'Katathon?', 9, 7], 'the')).to be_truthy
  end

  it 'returns false if an array doen\'t contain a element' do
    expect(check?([66, 'codewars', 11, 'alex loves pushups'], 'hello')).to be_falsey
  end
end
