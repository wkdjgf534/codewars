# frozen_string_literal: true

require 'rspec'

# Bob is preparing to pass IQ test. The most frequent task in this test is to find
# out which one of the given numbers differs from the others. Bob observed that
# one number usually differs from the others in evenness. Help Bob — to check his
# answers, he needs a program that among the given numbers finds one that is
# different in evenness, and return a position of this number.

# Keep in mind that your task is to help Bob solve a real IQ test, which means
# indexes of the elements start from 1 (not 0)

# Examples:

# iq_test("2 4 7 8 10") => 3 # Third number is odd, while the rest of the numbers are even
# iq_test("1 2 1 1") => 2    # Second number is even, while the rest of the numbers are odd

# Solutions from Codewars
#def iq_test(numbers)
#  nums = numbers.split.map(&:to_i).map(&:even?)
#  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
#end

#def iq_test(numbers)
#  # partition - https://ruby-doc.org/core-2.7.1/Enumerable.html#method-i-partition
#  # Returns two arrays, the first containing the elements of enum for which the block
#  # evaluates to true, the second containing the rest.
#  # (1..6).partition { |v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]
#  ar = numbers.split.map(&:to_i)
#  ar.partition(&:even?)
#  ar.index(ar.partition(&:even?).find(&:one?).first) + 1
#end

#def iq_test(numbers)
#  numbers = numbers.split(' ').map{|n| n.to_i.even? }
#  numbers.index(numbers.count(false) == 1 ? false : true) + 1
#end

def iq_test(numbers)
  number_array = numbers.split(' ').map(&:to_i)
  even_elements = number_array.count(&:even?)
  number_array.find_index { |x| even_elements == 1 ? x.even? : x.odd? } + 1
end

p iq_test('2 4 7 8 10')

describe '#iq_test' do
  it 'returns index of odd number' do
    expect(iq_test('2 4 7 8 10')).to eq(3)
  end

  it 'returns index of odd number' do
    expect(iq_test('2 5 11 21 45')).to eq(1)
  end
end
