# frozen_string_literal: true

require 'rspec'

# If　a = 1, b = 2, c = 3 ... z = 26
# Then l + o + v + e = 54
# and f + r + i + e + n + d + s + h + i + p = 108
# So friendship is twice stronger than love :-)

# The input will always be in lowercase and never be empty.

# The best solution from Codewars
# def words_to_marks(string)
#   string.sum - string.size * 96
# end

def words_to_marks(string)
  string.bytes.map { |letter| letter - 96 }&.sum
end

p words_to_marks('test')

describe '#words_to_marks' do
  it 'returns a number' do
    expect(words_to_marks('test')).to eq(64)
  end

  it 'returns zero' do
    expect(words_to_marks('')).to eq(0)
  end

end
