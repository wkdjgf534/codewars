# frozen_string_literal: true

require 'rspec'

# Haskell has some useful functions for dealing with lists:

# $ ghci
# GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
# λ head [1,2,3,4,5]
# 1
# λ tail [1,2,3,4,5]
# [2,3,4,5]
# λ init [1,2,3,4,5]
# [1,2,3,4]
# λ last [1,2,3,4,5]
# 5

# Your job is to implement these functions in your given language. Make sure it doesn't edit the array;
# that would cause problems! Here's a cheat sheet:

# | HEAD | <----------- TAIL ------------> |
# [  1,  2,  3,  4,  5,  6,  7,  8,  9,  10]
# | <----------- INIT ------------> | LAST |

# head [x] = x
# tail [x] = []
# init [x] = []
# last [x] = x

# Here's how I expect the functions to be called in your language:

# head [1,2,3,4,5] => 1
# tail [1,2,3,4,5] => [2,3,4,5]

# Most tests consist of 100 randomly generated arrays, each with four tests, one for each operation.
# There are 400 tests overall. No empty arrays will be given. Haskell has QuickCheck tests

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def head(array)
  array.first
end

def tail(array)
  array[1..-1]
end

def init(array)
  array[0..-2]
end

def last(array)
  array.last
end

p head(array)
p tail(array)
p init(array)
p last(array)

describe '#head' do
  it 'returns the first element of an array' do
    expect(head(array)).to eq(1)
  end
end

describe '#last' do
  it 'returns the last element of an array' do
    expect(last(array)).to eq(9)
  end
end

describe '#tail' do
  it 'returns the tail of an array' do
    expect(tail(array)).to match_array([2, 3, 4, 5, 6, 7, 8, 9])
  end
end

describe '#init' do
  it 'returns the init of an array' do
    expect(init(array)).to match_array([1, 2, 3, 4, 5, 6, 7, 8])
  end
end
