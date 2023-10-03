# frozen_string_literal: true

require 'rspec'

# In this kata you get the start number and the end number of a region and should return the count of
# all numbers except numbers with a 5 in it. The start and the end number are both inclusive!

# Examples:

# 1,9 => 1,2,3,4,6,7,8,9 => Result 8
# 4,17 => 4,6,7,8,9,10,11,12,13,14,16,17 => Result 12

# The result may contain fives. ;-)
# The start number will always be smaller than the end number. Both numbers can be also negative!
# I'm very curious for your solutions and the way you solve it.
# Maybe someone of you will find an easy pure mathematics solution.

# Have fun coding it and please don't forget to vote and rank this kata! :-)
# I have also created other katas. Take a look if you enjoyed this kata!

# The best solution from Codewars
# def dont_give_me_five(first, last)
#   (first..last).count { |i| !i.to_s.include?('5') }
# end

def dont_give_me_five(first, last)
  Array(first..last).select { |n| n unless n.to_s.include?('5') }.size
end

p dont_give_me_five(4, 17)

describe '#dont_give_me_five' do
  it 'returns the total amount of numbers in an array (except 5)' do
    expect(dont_give_me_five(1, 9)).to eq(8)
  end
end
