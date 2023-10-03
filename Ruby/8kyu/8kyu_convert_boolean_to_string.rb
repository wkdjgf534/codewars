# frozen_string_literal: true

require 'rspec'

# In this programming exercise, you're going to learn about functions, boolean (true/false) values, strings,
# and the if-statement.

# A function is a block of code that takes an input and produces an output. In this example, boolean_to_string is
# a function whose input is either true or false, and whose output is the string representation of the input,
# either "true" or "false".

# A common idea we often want to represent in code is the concept of true and false. A variable that can either be
# true or false is called a boolean variable. In this example, the input to boolean_to_string
# (represented by the variable b) is a boolean.

# Lastly, when we want to take one action if a boolean is true, and another if it is false, we use an if-statement.

# For this kata, don't worry about edge cases like where unexpected input is passed to the function.
# You'll get to worry about these enough in later exercises.

# The best solution form Codewars
# def boolean_to_string(b)
#   b ? 'true' : 'false'
# end

def boolean_to_string(b)
  # is_a? - http://ruby-doc.org/core-2.5.1/Object.html#method-i-is_a-3F
  b.is_a?(TrueClass) ? 'true' : 'false'
end

p boolean_to_string(true)

describe '#boolean_to_string' do
  it 'returns the string instead of the boolean' do
    expect(boolean_to_string(true)).to eq('true')
  end
end
