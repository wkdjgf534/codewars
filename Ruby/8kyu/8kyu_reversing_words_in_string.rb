# frozen_string_literal: true

require 'rspec'

# You need to write a function that reverses the words in a given string.
# A word can also fit an empty string. If this is not clear enough, here are some examples:
# As the input may have trailing spaces, you will also need to ignore unneccesary whitespace.

# reverse('Hello World') === 'World Hello'
# reverse('Hi There.') === 'There. Hi'

def reverse(string)
  string.split.reverse.join(' ')
end

p reverse('hello world!')

describe '#reverse' do
  it 'returns a reversed string' do
    expect(reverse('hello world!')).to eq('world! hello')
  end
end
