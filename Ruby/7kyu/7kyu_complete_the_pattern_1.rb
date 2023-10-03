# frozen_string_literal: true

require 'rspec'

# Task: You have to write a function pattern which returns the
# following Pattern(See Pattern & Examples) upto n number of rows.
# Note:Returning the pattern is not the same as Printing the pattern.
# Rules/Note:
# If n < 1 then it should return "" i.e. empty string.
# There are no whitespaces in the pattern.
# Pattern:

# 1
# 22
# 333
# ....
# .....
# nnnnnn

# Examples:
# pattern(5):
# 1
# 22
# 333
# 4444
# 55555

def pattern(num)
  num.zero? || num.negative? ? '' : (1..num).map { |n| n.to_s * n }.join("\n")
end

p pattern(5)

describe '#pattern' do
  it 'returns a sequence of numbers' do
    expect(pattern(2)).to eq("1\n22")
  end

  it 'returns an empty string' do
    expect(pattern(0)).to eq('')
  end
end
