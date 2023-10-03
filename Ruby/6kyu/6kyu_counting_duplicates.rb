# frozen_string_literal: true

require 'rspec'

# Count the number of Duplicates

# Write a function that will return the count of distinct case-insensitive alphabetic
# characters and numeric digits that occur more than once in the input string. The input
# string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
# Example

# 'abcde' => 0 # no characters repeats more than once
# 'aabbcde' => 2 # 'a' and 'b'
# 'aabBcde' => 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# 'indivisibility' => 1 # 'i' occurs six times
# 'Indivisibilities' => 2 # 'i' occurs seven times and 's' occurs twice
# 'aA11' => 2 # 'a' and '1'
# 'ABBA' => 2 # 'A' and 'B' each occur twice

# The best solution from Codewars
# def duplicate_count(text)
#   ('a'..'z').count { |c| text.downcase.count(c) > 1 }
# end

def duplicate_count(text)
  text.downcase.chars.group_by(&:itself).count { |_k, v| v.size > 1 }
end

p duplicate_count('abcdeaB')

describe '#duplicate_count' do
  it 'returns number 2' do
    expect(duplicate_count('abcdeaB')).to eq(2)
  end

  it 'returns number 0' do
    expect(duplicate_count('')).to eq(0)
  end
end
