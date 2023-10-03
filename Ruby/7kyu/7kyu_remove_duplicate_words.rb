# frozen_string_literal: true

require 'rspec'

# Your task is to remove all duplicate words from string, leaving only single words entries.

# Example:

# Input:

# 'alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta'

# Output:

# 'alpha beta gamma delta'

str = 'alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta'

def remove_duplicate_words(str)
  str.split.uniq!.join(' ')
end

p remove_duplicate_words(str)

describe '#remove_duplicate_words' do
  it 'returns the string with unique words' do
    expect(remove_duplicate_words(str)).to eq('alpha beta gamma delta')
  end
end
