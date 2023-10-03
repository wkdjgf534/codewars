# frozen_string_literal: true

require 'rspec'

# In this Kata, you will be given a string that may have mixed uppercase and lowercase
# letters and your task is to convert that string to either lowercase only or uppercase only based on:
#   make as few changes as possible.
#   if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.

# For example:

# solve('coDe') = 'code'. Lowercase characters > uppercase. Change only the "D" to lowercase.
# solve('CODe') = 'CODE'. Uppercase characters > lowecase. Change only the "e" to uppercase.
# solve('coDE') = 'code'. Upper == lowercase. Change all to lowercase.

# The best solution from Codewars
# def solve(s)
#   s.count('A-Z') > s.count('a-z') ? s.upcase : s.downcase
# end

def solve(str)
  letters = str.size
  capitalized_letters = str.scan(/\p{Upper}/).size
  letters - capitalized_letters >= letters / 2 ? str.downcase : str.upcase
end

p solve('coDE')

describe '#solve' do
  it 'returns a word with uppercase letters' do
    expect(solve('cODE')).to eq('CODE')
  end

  it 'returns a word with lowercase letters' do
    expect(solve('coDE')).to eq('code')
  end

  it 'returns a word with lowercase letters' do
    expect(solve('codE')).to eq('code')
  end
end
