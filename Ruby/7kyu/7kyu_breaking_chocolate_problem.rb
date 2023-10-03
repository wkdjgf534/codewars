# frozen_string_literal: true

require 'rspec'

# Your task is to split the chocolate bar of given dimension n x m into small squares.
# Each square is of size 1x1 and unbreakable. Implement a function that will return
# minimum number of breaks needed.

# For example if you are given a chocolate bar of size 2 x 1 you can split it to single
# squares in just one break, but for size 3 x 1 you must do two breaks.

# If input data is invalid you should return 0 (as in no breaks are needed if we do not
# have any chocolate to split). Input will always be a non-negative integer.

# def break_chocolate(n, m)
#   [n * m - 1, 0].max
# end

def break_chocolate(n, m)
  (n * m).zero? ? 0 : (n * m) - 1
end

p break_chocolate(0, 0)

describe '#break_chocolate' do
  it 'returns a count of split' do
    expect(break_chocolate(5, 5)).to eq(24)
  end
  it 'returns zero' do
    expect(break_chocolate(0, 5)).to eq(0)
  end
end
