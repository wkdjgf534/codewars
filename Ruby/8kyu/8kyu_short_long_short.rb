# frozen_string_literal: true

require 'rspec'

# Given 2 strings, a and b, return a string of the form short + long + short, with
# the shorter string on the outside and the longer string on the inside. The strings
# will not be the same length, but they may be empty (length0).

# For example:
# solution('1', '22') => '1221'
# solution('22', '1') => '1221'

# The best solution from Codewars
# def solution(a, b)
#   a.length < b. length ? a + b + a : b + a + b
# end

def solution(a, b)
  str = [a, b].sort_by(&:length)
  str[0] + str[1] + str[0]
end

p solution('aa', 'b')

describe '#solution' do
  it 'concatinates two strings' do
    expect(solution('1', '22')).to eq('1221')
  end
end
