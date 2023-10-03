# frozen_string_literal: true

require 'rspec'

# We all use 16:9, 16:10, 4:3 etc. ratios every day. Main task is to determine image
# ratio by its width and height dimensions.

# Function should take width and height of an image and return a ratio string (ex."16:9").
# If any of width or height entry is 0 function should throw an exception (or return Nothing).


# The best solution #1 from codewars
# def calculate_ratio(w, h)
#   return 'You threw an error' if w.zero? || h.zero?
#   # gcd - https://ruby-doc.org/core-3.0.2/Integer.html#method-i-gcd
#   # Returns the greatest common divisor of the two integers. The result is always positive.
#   # 36.gcd(60) #=> 12
#   gcd = w.gcd(h)
#   [w / gcd, h / gcd].join(':')
# end

# The best solution #2 from codewars
# def calculate_ratio(w,h)
#   [w, h].any?(0) ? 'You threw an error' : "#{(n = Rational(w, h)).numerator}:#{n.denominator}"
# end

def gcd(elem1, elem2)
  elem2.zero? ? elem1 : gcd(elem2, elem1 % elem2)
end

def calculate_ratio(width, height)
  return 'You threw an error' if width.zero? || height.zero?

  ratio = gcd(width, height)
  "#{width / ratio}:#{ height / ratio}"
end

p calculate_ratio(1920, 1080)

describe '#calculate_ratio' do
  it 'returns a ratio for 1920 x 1080' do
    expect(calculate_ratio(1920, 1080)).to eq('16:9')
  end

  it 'returns a ratio for 1024 x 768' do
    expect(calculate_ratio(1024, 768)).to eq('4:3')
  end

  it 'returns an error if width is 0' do
    expect(calculate_ratio(0, 1080)).to eq('You threw an error')
  end

  it 'returns an error if height is 0' do
    expect(calculate_ratio(1920, 0)).to eq('You threw an error')
  end
end
