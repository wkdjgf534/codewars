# frozen_string_literal: true

require 'rspec'

# Description:

# We want to generate a function that computes the series starting from 0 and ending until
# the given number following the sequence:
# 0 1 3 6 10 15 21 28 36 45 55 ....

# which is created by

# 0, 0+1, 0+1+2, 0+1+2+3, 0+1+2+3+4, 0+1+2+3+4+5, 0+1+2+3+4+5+6, 0+1+2+3+4+5+6+7 etc..

# Input:
# LastNumber
# Output:
# series and result

# Example:
# Input:
# > 6
# Output:
# 0+1+2+3+4+5+6 = 21

# Input:
# > -15
# Output:
# -15<0

# Input:
# > 0
# Output:
# 0=0

# A good solution from Codewars
# class SequenceSum
#   def self.show_sequence(num)
#     case num <=> 0
#     when -1 then "#{num}<0"
#     when 0  then "#{num}=0"
#     else         "#{(0..num).to_a.join('+')} = #{(0..num).reduce(:+)}"
#     end
#   end
# end

class SequenceSum
  def self.show_sequence(num)
    if num.positive?
      result = (0..num).reduce(:+)
      (0..num).map { |t| t }.join('+') + " = #{result}"
    else
      num.zero? ? "#{num}=0" : "#{num}<0"
    end
  end
end

p SequenceSum.show_sequence(6)

describe '#show_sequence' do
  it 'returns a new string of numbers' do
    expect(SequenceSum.show_sequence(6)).to eq('0+1+2+3+4+5+6 = 21')
  end

  it 'returns a string \'0=0\' if a number equal 0' do
    expect(SequenceSum.show_sequence(0)).to eq('0=0')
  end

  it 'returns a string \'-15<0\' if a number equal -15' do
    expect(SequenceSum.show_sequence(-15)).to eq('-15<0')
  end
end
