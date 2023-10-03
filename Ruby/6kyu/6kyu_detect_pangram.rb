# frozen_string_literal: true

require 'rspec'

# A pangram is a sentence that contains every single letter of the alphabet at least once.
# For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram,
# because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not.
# Ignore numbers and punctuation.

def pangram?(string)
  ('a'..'z').all? { |letter| string.downcase.include?(letter) }
end

p pangram?('Testing, Testing')

describe '#array_diff' do
  it 'returns false' do
    expect(pangram?('Testing, Testing')).to be_falsey
  end

  it 'returns true' do
    expect(pangram?('The quick brown fox jumps over the lazy dog')).to be_truthy
  end
end
