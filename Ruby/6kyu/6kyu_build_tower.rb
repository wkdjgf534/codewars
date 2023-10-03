# frozen_string_literal: true

require 'rspec'

# Build Tower by the following given argument:
# number of floors (integer and always greater than 0).

# Tower block is represented as *
# Python: return a list;
# JavaScript: returns an Array;
# C#: returns a string[];
# PHP: returns an array;
# C++: returns a vector<string>;
# Haskell: returns a [String];
# Ruby: returns an Array;

# Have fun!
# for example, a tower of 3 floors looks like below

# [
#   '  *  ',
#   ' *** ',
#   '*****'
# ]

# and a tower of 6 floors looks like below

# [
#   '     *     ',
#   '    ***    ',
#   '   *****   ',
#   '  *******  ',
#   ' ********* ',
#   '***********'
# ]

# The good solution from Codewars
# def tower_builder(n_floors)
#   (1..n_floors).map do |i|
#     space = ' ' * (n_floors - i)
#     stars = '*' * (i * 2 - 1)
#     space + stars + space
#   end
# end

def tower_builder(n_floors)
  tower = []
  n_floors.times do |num|
    spacing = ' ' * (n_floors - (num + 1))
    star = '*' * (2 * num + 1)
    tower << (spacing + star + spacing)
  end
  tower
end

p tower_builder(3)

describe '#tower_builder' do
  it 'returns a new 3 row pyramid' do
    expect(tower_builder(3)).to match_array(['  *  ', ' *** ', '*****'])
  end
end
