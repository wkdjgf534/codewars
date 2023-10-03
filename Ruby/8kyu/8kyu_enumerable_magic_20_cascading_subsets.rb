# frozen_string_literal: true

require 'rspec'

# Examples
# each_cons([1,2,3,4], 2) => [[1,2], [2,3], [3,4]]
# each_cons([1,2,3,4], 3) => [[1,2,3],[2,3,4]]

# As you can see, the lists are cascading; ie, they overlap, but never out of order.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-each-cons

# The best solution form Codewars
# def each_cons list, num
#   list.each_cons(num).to_a
# end

def each_cons(list, num)
  result = []
  list.each_cons(num) { |a| result << a }
  result
end

p each_cons([3, 5, 8, 13], 2)

describe '#each_cons' do
  it 'returns a two dimensional array' do
    expect([3, 5, 8, 13].each_cons(2)).to match_array([[3, 5], [5, 8], [8, 13]])
  end
end
