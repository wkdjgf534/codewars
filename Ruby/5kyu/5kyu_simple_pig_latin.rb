# frozen_string_literal: true

require 'rspec'

# Move the first letter of each word to the end of it, then add "ay" to the end of the word.
# Leave punctuation marks untouched.
# Examples
# pig_it('Pig latin is cool') => igPay atinlay siay oolcay
# pig_it('Hello world !')     => elloHay orldway !

# The best solution form Codewars with some corrections
# def pig_it(text)
#   text.split.map { |word| word.match?(/\w/) ? "#{word[1..-1]}#{word[0]}ay" : word }.join(' ')
# end

def pig_it(text)
  # rotate - http://ruby-doc.org/core-2.6.2/Array.html#method-i-rotate
  # Returns a new array by rotating self so that the element at count is the first
  # element of the new array.
  # If count is negative then it rotates in the opposite direction, starting from
  # the end of self where -1 is the last element.
  # a = [ "a", "b", "c", "d" ]
  # a.rotate #=> ["b", "c", "d", "a"]
  result = []
  text.split.each do |str|
    str = str.chars.rotate(1).join + 'ay' if str.match?(/\w/)
    result << str
  end
  result.join(' ')
end

p pig_it('O tempora o mores !')

describe '#pig_it' do
  it 'returns a new converted string' do
    expect(pig_it('O tempora o mores !')).to eq('Oay emporatay oay oresmay !')
  end
end
