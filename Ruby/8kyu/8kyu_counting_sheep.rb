# frozen_string_literal: true

require 'rspec'

# Consider an array of sheep where some sheep may be missing from their place.
# We need a function that counts the number of sheep present in the array (true means present).

# For example,

# [true,  true,  true,  false,
#   true,  true,  true,  true ,
#   true,  false, true,  false,
#   true,  false, false, true ,
#   true,  true,  true,  true ,
#   false, false, true,  true]

# The best solution from Codewars
# def count_sheeps(array)
#    array.count(true)
# end

def count_sheeps(array)
  array.select { |x| x }.count
end

p count_sheeps([true, false, false, true, false, false, false, true])

describe '#count_sheeps' do
  it 'calculates all boolenan \'true\' in an array' do
    expect(count_sheeps([true, false, false, true, true])).to eq(3)
  end
end
