# frozen_string_literal: true

require 'rspec'

# Complete the solution so that it reverses all of the words within the string passed in.

# Example:
# solution("The greatest victory is that which requires no battle")
# should return "battle no requires which that is victory greatest The"

def solution(sentence)
  sentence.split.reverse.join(' ')
end

p solution('hello world!')

describe '#solution' do
  it 'returns a reversed string' do
    expect(solution('hello world!')).to eq('world! hello')
  end
end
