# frozen_string_literal: true

require 'rspec'

# Write a function that removes the spaces from the string, then return the resultant string.

# Examples:

# Input -> Output
# "8 j 8   mBliB8g  imjB8B8  jl  B" -> "8j8mBliB8gimjB8B8jlB"
# "8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd" -> "88Bifk8hB8BB8BBBB888chl8BhBfd"
# "8aaaaa dddd r     " -> "8aaaaaddddr"

def no_space(string) = string.tr(" ", "")

p no_space('   test test1  test2')

describe '#no_space' do
  it 'returns the string without spaces' do
    expect(no_space('   test test1  test2')).to eq('testtest1test2')
  end
end
