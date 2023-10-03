# frozen_string_literal: true

require 'rspec'

# This time no story, no theory. The examples below show you how to write function accum:

# Examples:

# accum("abcd")     => 'A-Bb-Ccc-Dddd'
# accum("RqaEzty") => 'R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy'
# accum("cwAt")    => 'C-Ww-Aaa-Tttt'

# The parameter of accum is a string which includes only letters from a..z and A..Z.

# An alternative solution from Codewars
# def accum(s)
#   s.chars.inject([]) { |a, c| a << c.upcase + c.downcase * a.size }.join("-")
# end

def accum(str)
  str.each_char.with_index.map { |letter, index| letter.upcase + letter.downcase * index }.join('-')
end

p accum('test')

describe '#accum' do
  it 'returns new string \'T-Ee-Sss-Tttt\'' do
    expect(accum('test')).to eq('T-Ee-Sss-Tttt')
  end
end
