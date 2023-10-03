# frozen_string_literal: true

require 'rspec'

# Complete the solution so that it takes the object (JavaScript/CoffeeScript) or
# hash (ruby) passed in and generates a human readable string from its key/value pairs.
# The format should be "KEY = VALUE". Each key/value pair should be separated
# by a comma except for the last pair.

# Example:
# solution({"a" => 1, "b" => '2'}) => 'a = 1, b = 2'

def solution(pairs)
  pairs.map { |key, value| "#{key} = #{value}" }.join(',')
end

p solution('a' => 1, 'b' => '2')

describe '#solution' do
  it 'returns a string instead of a hash' do
    expect(solution('a' => 1, 'b' => '2')).to eq('a = 1,b = 2')
  end
end
