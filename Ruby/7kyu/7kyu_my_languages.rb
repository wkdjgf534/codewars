# frozen_string_literal: true

require 'rspec'

# Your task

# Given a dictionary/hash/object of languages and your respective test results, return the list of languages
# where your test score is at least 60, in descending order of the results.

# Note: There will be no duplicate values.

# Examples

# {"Java" => 10, "Ruby" => 80, "Python" => 65} => ["Ruby", "Python"]
# {"Hindi" => 60, "Dutch" => 93, "Greek" => 71} => ["Dutch", "Greek", "Hindi"]
# {"C++" => 50, "ASM" => 10, "Haskell" => 20} => []

# The best solution from Codewars
# def my_languages(results)
#   results.keys.select { |k| results[k] >= 60 }.sort_by { |k| -results[k] }
# end

hash = { 'C' => 20, 'Java' => 10, 'Ruby' => 80, 'Python' => 65, 'C++' => 61 }

def my_languages(results)
  # select - http://ruby-doc.org/core-2.5.1/Hash.html#method-i-select
  # h = { "a" => 100, "b" => 200, "c" => 300 }
  # h.select {|k,v| v < 200}  #=> {"a" => 100}
  # sort_by - http://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-sort_by
  # map -
  results.select! { |key, value| key if value >= 60 }
  results.sort_by(&:last).reverse.map(&:first)
end

p my_languages(hash)

describe '#my_languages' do
  it 'returns keys with values more that 60' do
    expect(my_languages(hash)).to eq(['Ruby', 'Python', 'C++'])
  end
end
