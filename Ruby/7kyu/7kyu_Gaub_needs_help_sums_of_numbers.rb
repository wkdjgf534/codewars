# frozen_string_literal: true

require 'rspec'

# Due to another of his misbehaved, the primary school's teacher of the young Gauß, Herr J.G. Büttner,
# to keep the bored and unruly young schoolboy Karl Friedrich Gauss busy for a good long time, while he
# teaching arithmetic to his mates, assigned him the problem of adding up all the whole numbers from 1
# through a given number n.

# Your task is to help the young Carl Friedrich to solve this problem as quickly as you can; so, he can
# astonish his teacher and rescue his recreation interval.

# Here's, an example:
# f(n=100) => 5050

# It's your duty to verify that n is a valid positive integer number. If not, please,
# return false (None for Python, null for C#).

# Note: the goal of this kata is to invite you to think about some 'basic' mathematic formula and how you can
# do performance optimization on your code.

# Advanced - experienced users should try to solve it in one line, without loops,
# or optimizing the code as much as they can.

# Credits: this kata was inspired by the farzher's kata 'Sum of large ints' . In fact,
# it can be seen as a sort of prep kata for that one.

# Solution from Codewars
# def calculate_sum(num)
#   num.is_a?(Integer) && num.positive? ? (1..num).reduce(:+) : false
# end

def calculate_sum(num)
  # is_a? - http://ruby-doc.org/core-2.6.3/Object.html#method-i-is_a-3F
  # Returns true if class is the class of obj, or if class is one of the superclasses
  # of obj or modules included in obj.
  return false if !num.is_a?(Integer) || num <= 0

  (1..num).to_a.reduce(&:+)
end

p calculate_sum(3.14)

describe '#calculate' do
  it 'returns a positive number if num greater than 1' do
    expect(calculate_sum(100)).to eq(5050)
  end

  it 'returns \'false\' if num equals zero' do
    expect(calculate_sum(0)).to be_falsey
  end

  it 'returns \'false\' if num is a float number' do
    expect(calculate_sum(3.1415)).to be_falsey
  end

  it 'returns \'false\' if num is a negative number' do
    expect(calculate_sum(-10)).to be_falsey
  end

  it 'returns \'false\' if num is not a number' do
    expect(calculate_sum('n')).to be_falsey
  end
end
