# frozen_string_literal: true

require 'rspec'

# Task:

# Your task is to write a function which returns the sum of following series upto nth term(parameter).

# Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...

# Rules:

# You need to round the answer to 2 decimal places and return it as String.
# If the given value is 0 then it should return 0.00
# You will only be given Natural Numbers as arguments.

# Examples:

# series_sum(1) => 1 = '1.00'
# series_sum(2) => 1 + 1/4 = '1.25'
# series_sum(5) => 1 + 1/4 + 1/7 + 1/10 + 1/13 = '1.57'

def series_sum(num)
  return '0.00' if num.zero?
  array = [1]
  t = 1
  (num - 1).times { array << 1 / (t += 3.0) }
  format('%.2f', array.sum)
end

p series_sum(59) # 2.40

describe '#series_sum' do
  it 'returns a string \'0.00\' if input is 0' do
    expect(series_sum(0)).to eq('0.00')
  end

  it 'returns a new string' do
    expect(series_sum(3)).to eq('1.39')
  end
end
