# frozen_string_literal: true

require 'rspec'

# Color Ghost
# Create a class Ghost
# Ghost objects are instantiated without any arguments.
# Ghost objects are given a random color attribute of white" or "yellow" or "purple"
# or "red" when instantiated

# ghost = Ghost.new
# ghost.color => 'white' or 'yellow' or 'purple' or 'red'

# The best solution from Codewars
# class Ghost
#   COLORS = %w[white yellow purple red].freeze
#   attr_reader :color

#   def initialize
#     @color = COLORS.sample
#   end
# end

class Ghost
  def color
    %w[white yellow purple red].sample
  end
end

p Ghost.new.color

describe '.color' do
  it 'returns random color' do
    colors = %w[white yellow purple red]
    expect(colors).to include(Ghost.new.color)
  end
end
