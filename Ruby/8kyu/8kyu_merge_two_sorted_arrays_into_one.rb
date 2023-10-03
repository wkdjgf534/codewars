# frozen_string_literal: true

require 'rspec'

# You are given two sorted arrays that contain only integers. Your task is to find a way to merge them
# into a single one, sorted in ascending order. Complete the function mergeArrays(arr1, arr2),
# where arr1 and arr2 are the original sorted arrays.

# You don't need to worry about validation, since arr1 and arr2 must be arrays with 0 or more Integers.
# If both arr1 and arr2 are empty, then just return an empty array.

# Note: arr1 and arr2 may be sorted in different orders. Also arr1 and arr2 may have same integers.
# Remove duplicated in the returned result.
# Examples

# arr1 = [1, 2, 3, 4, 5];
# arr2 = [6, 7, 8, 9, 10];
# merge_arrays(arr1, arr2);  // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# arr3 = [1, 3, 5, 7, 9];
# arr4 = [10, 8, 6, 4, 2];
# merge_arrays(arr3, arr4);  // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# arr5 = [1, 3, 5, 7, 9, 11, 12];
# arr6 = [1, 2, 3, 4, 5, 10, 12];
# merge_arrays(arr5, arr6);  // [1, 2, 3, 4, 5, 7, 9, 10, 11, 12]

# Happy coding!

arr1 = [4, 3, 2, 1]
arr2 = [1, 2, 3, 4, 5, 6, 7, 8]

# Another good solution form Codewars
# def merge_arrays(arr1, arr2)
#   (arr1 + arr2).uniq.sort
# end

def merge_arrays(array1, array2)
  # | - https://stackoverflow.com/questions/11165205/ruby-pipe-operator
  # http://www.rubyinside.com/rubys-unary-operators-and-how-to-redefine-their-functionality-5610.html
  (array1 | array2).sort
end

p merge_arrays(arr1, arr2)

describe '#merge_arrays' do
  it 'returns the sum of two given arrays' do
    expect(merge_arrays(arr1, arr2)).to match_array([1, 2, 3, 4, 5, 6, 7, 8])
  end
end
