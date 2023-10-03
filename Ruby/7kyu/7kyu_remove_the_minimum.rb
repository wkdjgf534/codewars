# frozen_string_literal: true

require 'rspec'

# The museum of incredible dull things

# The museum of incredible dull things wants to get rid of some exhibitions. Miriam, the interior architect,
# comes up with a plan to remove the most boring exhibitions. She gives them a rating,
# and then removes the one with the lowest rating.

# However, just as she finished rating all exhibitions, she's off to an important fair, so she asks you to write
# a program that tells her the ratings of the items after one removed the lowest one. Fair enough.

# Task

# Given an array of integers, remove the smallest value. Do not mutate the original array/list. If there are multiple
# elements with the same value, remove the one with a lower index. If you get an empty array/list,
# return an empty array/list.

# Don't change the order of the elements that are left.
# Examples

# remove_smallest([1,2,3,4,5]) => [2,3,4,5]
# remove_smallest([5,3,2,1,4]) => [5,3,2,4]
# remove_smallest([2,2,1,2,1]) => [2,2,2,1]

def remove_smallest(numbers)
  # dup - http://ruby-doc.org/core-2.5.1/Object.html#method-i-dup
  # https://coderwall.com/p/1zflyg/ruby-the-differences-between-dup-clone
  # https://medium.com/@raycent/ruby-clone-vs-dup-8a49b295f29a
  new_array = numbers.dup
  new_array.empty? ? [] : new_array.delete_at(new_array.index(new_array.min))
  new_array
end

p remove_smallest([2, 2, 1, 2, 1])

describe '#remove_smallest' do
  it 'returns an new array without the first smallest value' do
    original_array = [2, 2, 1, 2, 1]
    new_array = [2, 2, 2, 1]
    expect(remove_smallest(original_array)).to match_array(new_array)
  end

  it 'returns an empty array if an original array is empty' do
    expect(remove_smallest([])).to match_array([])
  end
end
