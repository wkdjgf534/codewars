# frozen_string_literal: true

require 'rspec'

# Write a function that when given a URL as a string, parses out just the domain name
# and returns it as a string. For example:

# domain_name("http://github.com/carbonfive/raygun") => 'github'
# domain_name("http://www.zombie-bites.com") => 'zombie-bites'
# domain_name("https://www.cnet.com") => 'cnet'

def domain_name(url)
  url.sub(/https?:\/\//, '').sub('www.', '').split('.').first
end

p domain_name('www.mapper.co')

describe '#domain_name' do
  it 'returns a domain name from URL 1' do
    expect(domain_name('http://www.google.com')).to eq('google')
  end

  it 'returns a domain name from URL 2 ' do
    expect(domain_name('www.google.com')).to eq('google')
  end
end
