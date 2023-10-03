# frozen_string_literal: true

require 'rspec'

# In the following 6 digit number:
# 283910
# 91 is the greatest sequence of 2 consecutive digits.
# In the following 10 digit number:
# 1234567890
# 67890 is the greatest sequence of 5 consecutive digits.

# Complete the solution so that it returns the greatest sequence of five consecutive digits found
# within the number given. The number will be passed in as a string of only digits.
# It should return a five digit integer. The number passed may be as large as 1000 digits.

def solution(digits)
  # each_cons - http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-each_cons
  # Iterates the given block for each array of consecutive <n> elements.
  # If no block is given, returns an enumerator.
  # (1..10).each_cons(5) { |a| p a }
  # [1, 2, 3, 4, 5]
  # [2, 3, 4, 5, 6]
  # [3, 4, 5, 6, 7]
  # [4, 5, 6, 7, 8]
  # [5, 6, 7, 8, 9]
  # [6, 7, 8, 9, 10]
  digits.chars.each_cons(5).map { |n| n.join.to_i }.max
end

p solution('12345678909125')

describe '#solution' do
  it 'returns a new largest 5-digits number from a string' do
    expect(solution('12345678909125')).to eq(90_912)
  end
end
