# frozen_string_literal: true

require 'rspec'

# When given a string of space separated words, return the word with the longest length. If there are multiple
# words with the longest length, return the last instance of the word with the longest length.

# Example:

# 'red white blue' => white
# 'red blue gold' => 'gold'

string = 'river lake puddle swamp sea ocean'

def longest_word(string_of_words)
  # sort_by works slower than sort
  # sort_by - http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-sort_by
  # %w{apple pear fig}.sort_by { |word| word.length } => ["fig", "pear", "apple"]
  string_of_words.split.sort_by(&:length).last
end

p longest_word(string)

describe '#longest_word' do
  it 'returns the longest word from the string' do
    expect(longest_word(string)).to eq('puddle')
  end
end
