# frozen_string_literal: true

require 'rspec'

# Complete the function that accepts a string parameter, and reverses each word
# in the string. All spaces in the string should be retained.
# Examples

# reverse_words('This is an example!') => 'sihT si na !elpmaxe'
# reverse_words('double  spaces')      => 'elbuod  secaps'

# The best solution fron Codewars
# def reverse_words(string)
#   # gsub - http://ruby-doc.org/core-2.5.1/String.html#method-i-gsub
#   # "hello".gsub(/[aeiou]/, '*') => "h*ll*"
#   string.gsub(/\S+/, &:reverse)
# end

# https://stackoverflow.com/questions/52578068/reversing-characters-in-a-string-regardless-of-the-number-of-spaces-ruby
def reverse_words(string)
  arr = []
  string.scan(/(\s*)(\S+)(\s*)/).map do |left, word, right|
    arr << left + word.reverse + right
  end
  arr.join
end

p reverse_words('double  spaced  words')

describe '#reverse_words' do
  it 'reverses all the words in a string without reversing the order of the words' do
    expect(reverse_words('double  spaced  words')).to eq('elbuod  decaps  sdrow')
  end
end
