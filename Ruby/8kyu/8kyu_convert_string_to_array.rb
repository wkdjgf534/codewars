# frozen_string_literal: true

require 'rspec'

# Write a function to split a string and convert it into an array of words. For example:

# "Robin Singh" => ["Robin", "Singh"]

# "I love arrays they are my favorite" => ["I", "love", "arrays", "they", "are", "my", "favorite"]

def string_to_array(string)
  string.split
end

p string_to_array('Hello World!')

describe '#string_to_array' do
  it 'converts a string to an array' do
    expect(string_to_array('Hello World!')).to match_array(['Hello', 'World!'])
  end
end
