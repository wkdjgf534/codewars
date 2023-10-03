# frozen_string_literal: true

require 'rspec'

# Complete the function/method so that it returns the url with anything after the anchor (#) removed.

# Examples:
# remove_url_anchor('www.codewars.com#about') =>  www.codewars.com
# remove_url_anchor('www.codewars.com?page=1') => www.codewars.com?page=1

# The best solution from codewars
# def remove_url_anchor(url)
#   url.split('#').shift
# end

def remove_url_anchor(url)
  url.gsub(/#\w+/, '')
end

p remove_url_anchor('www.codewars.com#about')

describe '#remove_url_anchor' do
  it 'returns an anddress without anchor' do
    expect(remove_url_anchor('www.codewars.com#about')).to eq('www.codewars.com')
  end

  it 'returns an original address' do
    expect(remove_url_anchor('www.codewars.com?page=1')).to eq('www.codewars.com?page=1')
  end
end
