# frozen_string_literal: true

require 'rspec'

# The marketing team is spending way too much time typing in hashtags.
# Let's help them with our own Hashtag Generator!

# Here's the deal:

#    It must start with a hashtag (#).
#    All words must have their first letter capitalized.
#    If the final result is longer than 140 chars it must return false.
#    If the input or the result is an empty string it must return false.

# Examples

# ' Hello there thanks for trying my Kata' # => '#HelloThereThanksForTryingMyKata'
# '    Hello     World   '                 # => '#HelloWorld'
# ''                                       # => false

def generate_hashtag(str)
  processed_string = str.split(' ').map(&:capitalize).join
  return false if processed_string.empty? || processed_string.length > 139

  "##{processed_string}"
end

p generate_hashtag('   hello   world   ')

describe '#generate_hashtag' do
  it 'returns a proper hashtag example1' do
    expect(generate_hashtag('   hello   world   ')).to eq('#HelloWorld')
  end

  it 'returns a proper hashtag example2' do
    expect(generate_hashtag(' Hello there thanks for trying my Kata'))
      .to eq('#HelloThereThanksForTryingMyKata')
  end

  it 'returns false' do
    expect(generate_hashtag('a' * 140)).to be_falsey
  end
end
