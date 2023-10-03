# frozen_string_literal: true

require 'rspec'

def multi_table(number)
  (1..10).map { |num| "#{num} * #{number} = #{num * number}" }.join("\n")
end

puts multi_table(0)

describe '#multi_table' do
  it 'returns the multiply table' do
    expect(multi_table(2)).to include("1 * 2 = 2\n2 * 2 = 4")
  end
end
