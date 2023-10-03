# frozen_string_literal: true

require 'rspec'

# You are given two arrays a1 and a2 of strings. Each string is composed with
# letters from a to z. Let x be any string in the first array and y be any string
# in the second array.

# Find max(abs(length(x) − length(y)))
# If a1 and/or a2 are empty return -1 in each language except in Haskell (F#)
# where you will return Nothing (None).

#Example:

# a1 = ['hoqq', 'bbllkw', 'oox', 'ejjuyyy', 'plmiis', 'xxxzgpsssa', 'xxwwkktt',
#       'znnnnfqknaz', 'qqquuhii', 'dvvvwz']
# a2 = ['cccooommaaqqoxii', 'gggqaffhhh', 'tttoowwwmmww']
# mxdiflg(a1, a2) --> 13

# Bash note:
# input : 2 strings with substrings separated by ,
# output: number as a string

array1 =  ['hoqq', 'bbllkw', 'oox', 'ejjuyyy', 'plmiis', 'xxxzgpsssa', 'xxwwkktt']
array2 =  ['cccooommaaqqoxii', 'gggqaffhhh', 'tttoowwwmmww']

def mxdiflg(a1, a2)
  # product - http://ruby-doc.org/core-2.6/Array.html#method-i-product
  # Returns an array of all combinations of elements from all arrays.
  # [1,2,3].product([4,5]) => [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]
  return -1 if a1.empty? || a2.empty?

  a1.product(a2).map { |x, y| (x.size - y.size).abs }.max
end

p mxdiflg(array1, array2)

describe '#mxdiflg' do
  it 'compares two arrays with strings' do
    expect(mxdiflg(array1, array2)).to eq(13)
  end

  it 'compares two arrays and one of them is empty' do
    array1 = []
    expect(mxdiflg(array1, array2)).to eq(-1)
  end
end
