# frozen_string_literal: true

require 'rspec'

# Complete the solution so that it splits the string into pairs of two characters.
# If the string contains an odd number of characters then it should replace the missing
# second character of the final pair with an underscore ('_').

# Examples:

# solution('abc') => ['ab', 'c_']
# solution('abcdef') => ['ab', 'cd', 'ef']

# The best solution from codewars
# def solution(str)
#   # scan - https://ruby-doc.org/core-2.7.1/String.html#method-i-scan
#   # a = "cruel world"
#   # a.scan(/(...)/) => [["cru"], ["el "], ["wor"]]
#   (str + '_').scan(/../)
# end

def solution(str)
  # each_slice - https://ruby-doc.org/core-2.7.1/Enumerable.html#method-i-each_slice
  # Iterates the given block for each slice of <n> elements. If no block is given, returns an enumerator.
  converted_string = str.size.odd? ? str + '_' : str
  converted_string.chars.each_slice(2).map(&:join)
end

p solution('abcdefg')

describe '#solution' do
  it 'returns a new array where the last pair contains underscore' do
    expect(solution('abcdefg')).to eq(%w[ab cd ef g_])
  end

  it "returns a new array where the last pair doesn't contain underscore" do
    expect(solution('abcdef')).to eq(%w[ab cd ef])
  end
end
