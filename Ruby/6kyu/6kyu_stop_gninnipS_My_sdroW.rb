# frozen_string_literal: true

require 'rspec'

# Write a function that takes in a string of one or more words, and returns the same string,
# but with all five or more letter words reversed (Just like the name of this Kata).
# Strings passed in will consist of only letters and spaces. Spaces will be included only
# when more than one word is present.

# Examples:

# spin_words( 'Hey fellow warriors' ) => 'Hey wollef sroirraw'
# spin_words( 'This is a test') => 'This is a test'
# spin_words( 'This is another test' ) => 'This is rehtona test'

# Another goot solution with gsub from Codewars
# def spin_words(string)
#   string.gsub(/\w{5,}/, &:reverse)
# end

def spin_words(string)
  string.split.map { |w| w.length > 4 ? w.reverse : w }.join(' ')
end

p spin_words('This is an amazing string')

describe '#spin_words' do
  it 'returns a new string with reversed words, which length more than 4 letters' do
    expect(spin_words('Hey fellow warriors')).to eq('Hey wollef sroirraw')
  end
end
