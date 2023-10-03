# frozen_string_literal: true

require 'rspec'

# Write a function that always returns 5

# Sounds easy right? Just bear in mind that you can't use any of the following characters: 0123456789*+-/

# Good luck :)

# Another example from Codewars
# def unusual_five()
#   'five!'.length
# end

def unusual_five
  %w[This is a trap !].size
end

p unusual_five

describe '#unusual_five' do
  it 'returns the number 5' do
    expect(unusual_five).to eq(5)
  end
end
