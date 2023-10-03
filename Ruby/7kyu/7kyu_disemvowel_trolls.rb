# frozen_string_literal: true

require 'rspec'

# Trolls are attacking your comment section!
# A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
# Your task is to write a function that takes a string and return a new string with all vowels removed.
# For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
# Note: for this kata y isn't considered a vowel.

def disemvowel(str) = str.delete('aeiouAEIOU')

p disemvowel('Hello WORLD')

describe '#digitize' do
  it 'returns a modified string' do
    expect(disemvowel('Hello WORLD')).to eq('Hll WRLD')
  end

  it 'returns an empty string' do
    expect(disemvowel('')).to eq('')
  end
end
