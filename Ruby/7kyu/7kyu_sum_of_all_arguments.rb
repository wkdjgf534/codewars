# frozen_string_literal: true

require 'rspec'

# Write a function that finds the sum of all its arguments.
# eg:

# sum(1, 2, 3)  => 6
# sum(8, 2) => 10
# sum(1, 2, 3, 4, 5) => 15

# Note that Python's function name is sum_args, as to avoid confusion with
# the preexistsing sum function. Ruby's Array#sum has been removed to make it a bit more interesting!

# https://medium.freecodecamp.org/rubys-splat-and-double-splat-operators-ceb753329a78
def sum(*args)
  args.reduce(:+)
end

p sum(1, 3, 6, 28)

describe '#sum' do
  it 'returns a sum of all elements' do
    expect(sum(1, 3, 6, 28)).to eq(38)
  end
end
