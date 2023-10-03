# frozen_string_literal: true

require 'rspec'

# Finish the solution so that it sorts the passed in array of numbers. If the function passes
# in an empty array or null/nil value then it should return an empty array.

# For example:

# solution([1, 2, 10, 50, 5]) => [1,2,5,10,50]
# solution(nil) => []

# Two good solutions from Codewars
# def solution(nums)
#   Array(nums).sort
# end

# def solution(nums)
#   (nums || []).sort
# end

def solution(nums)
  nums.nil? ? [] : nums.sort
end

p solution([1, 2, 10, 50, 5])

describe '#solution' do
  it 'sorts an array' do
    expect(solution([1, 2, 10, 50, 5])).to match_array([1, 2, 5, 10, 50])
  end

  it 'returns an empty array if is nil' do
    expect(solution(nil)).to match_array([])
  end
end
