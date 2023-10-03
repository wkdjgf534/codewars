# frozen_string_literal: true

require 'rspec'

# nth_even(1)       => 0, the first even number is 0
# nth_even(3)       => 4, the 3rd even number is 4 (0, 2, 4)

# nth_even(100)     => 198
# nth_even(1298734) => 2597466

def nth_even(number)
  (number - 1) * 2
end

p nth_even(100)

describe '#nth_even' do
  it 'returns the correct number' do
    expect(nth_even(3)).to eq(4)
    expect(nth_even(100)).to eq(198)
  end
end
