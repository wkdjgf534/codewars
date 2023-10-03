# frozen_string_literal: true

require 'rspec'

# Is the string uppercase?

# Task
# Create a method upcase? to see whether the string is ALL CAPS. For example:

# 'c'.upcase? == false
# 'C'.upcase? == true
# 'hello I AM DONALD'.upcase? == false
# 'HELLO I AM DONALD'.upcase? == true
# 'ACSKLDFJSgSKLDFJSKLDFJ'.upcase? == false
# 'ACSKLDFJSGSKLDFJSKLDFJ'.upcase? == true

# In this Kata, a string is said to be in ALL CAPS whenever it does not contain any lowercase letter
# so any string containing no letters at all is trivially considered to be in ALL CAPS.

class String
  def upcase?
    self == upcase
  end
end

p 'TEST'.upcase?

describe '.upcase?' do
  it 'returns true' do
    expect('TEST'.upcase?).to be_truthy
  end

  it 'returns false' do
    expect('TesT'.upcase?).to be_falsey
  end
end
