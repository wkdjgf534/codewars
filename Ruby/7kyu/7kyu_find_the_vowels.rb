# frozen_string_literal: true

require 'rspec'

# We want to know the index of the vowels in a given word, for example,
# there are two vowels in the word super (the second and fourth letters).

# So given a string "super", we should return a list of [2, 4].
# Some examples:
# Mmmm  => []
# Super => [2,4]
# Apple => [1,5]
# YoMama -> [1,2,4,6]

# NOTE: Vowels in this context refers to English Language Vowels - a e i o u y
# NOTE: this is indexed from [1..n] (not zero indexed!)

def vowel_indices(word)
  word.downcase.chars.map.with_index(1) { |letter, index| index if /[aeiouy]/=~letter }.compact
end

p vowel_indices('crIssUm')

describe '#vowel_indices' do
  it 'returns an array of numbers, if a string contains vowels' do
    expect(vowel_indices('sUper')).to match_array([2, 4])
  end

  it 'returns an empty array, if a string doesn\'t contain vowels' do
    expect(vowel_indices('Mmmm')).to eq([])
  end
end
