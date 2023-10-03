# frozen_string_literal: true

require 'rspec'

# You're at the zoo... all the meerkats look weird. Something has gone terribly wrong - someone has gone and switched
# their heads and tails around!

# Save the animals by switching them back. You will be given an array which will have three values (tail, body, head).
# It is your job to re-arrange the array so that the animal is the right way round (head, body, tail).

# Same goes for all the other arrays/lists that you will get in the tests: you have to change the element positions
# with the same exact logics - simples!

part_of_body = %w[tail body head]

def fix_the_meerkat(arr)
  arr.reverse
end

p fix_the_meerkat(part_of_body)

describe '#fix_the_meerkat' do
  it 'returns salary with bonus' do
    expect(fix_the_meerkat(%w[tail body head])).to match_array(%w[head body tail])
  end
end
