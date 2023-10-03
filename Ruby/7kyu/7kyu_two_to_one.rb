# frozen_string_literal: true

require 'rspec'

# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string,
# the longest possible, containing distinct letters, each taken only once - coming from s1 or s2.

# Examples:

# a = 'xyaabbbccccdefww' b = 'xxxxyyyyabklmopq'
# longest(a, b) -> 'abcdefklmopqwxy'

# a = "abcdefghijklmnopqrstuvwxyz"
# longest(a, a) -> 'abcdefghijklmnopqrstuvwxyz'

def longest(str1, str2)
  (str1 + str2).chars.uniq.sort.join
end

p longest('aretheyhere', 'yestheyarehere')

describe '#longest' do
  it 'returns a new string with unique letters from both strings' do
    expect(longest('aretheyhere', 'yestheyarehere')).to eq 'aehrsty'
  end
end
