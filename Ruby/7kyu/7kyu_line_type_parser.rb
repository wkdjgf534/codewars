# frozen_string_literal: true

require 'rspec'

# We need a method for parsing an array of strings to see which of 3 categories they fall into:

# :alpha strings contain the word 'alpha'
# :beta strings contain the word 'beta'
# :unknown strings don't contain either 'alpha' or 'beta'
# :unknown is also used for nil entries
# No string will contain both 'alpha' and 'beta'
# The strings can contain alpha and beta in any case (e.g. 'Alpha', 'BeTa')

# The input will be an array containing strings and nils. The output should be an array containing :alpha,
# :beta and :unknown symbols, based on the string at that index in the input array.

# For example, the input:
# ["I'm Alpha", "No idea", "beta tester", nil]
# should result in:
# [:alpha, :unknown, :beta, :unknown]

array = ['This is an alpha line', 'Beta line next!', 'Another AlphA', 'I have no idea', nil]

# The best solution from Codewars
# def line_types(lines)
#   lines.map { |line| (line.to_s[/alpha|beta/i] || 'unknown').downcase.to_sym }
# end

def line_types(lines)
  lines.map do |line|
    if line =~ /alpha|beta/i
      line.match?(/alpha/i) ? :alpha : :beta
    else
      :unknown
    end
  end
end

p line_types(array)

describe '#line_types' do
  it 'replaces elements of an array with symbols' do
    expect(line_types(array)).to match_array(%i[alpha beta alpha unknown unknown])
  end
end
