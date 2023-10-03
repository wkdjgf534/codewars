# frozen_string_literal: true

require 'rspec'

# Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and
#  carries the "instructions" for the development and functioning of living organisms.
# If you want to know more http://en.wikipedia.org/wiki/DNA

# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G".
# You have function with one side of the DNA (string, except for Haskell); you need to
# get the other complementary side. DNA strand is never empty or there is no DNA
# at all (again, except for Haskell).

# More similar exercise are found here http://rosalind.info/problems/list-view/ (source)

# dna_strand("ATTGC") => "TAACG"
# dna_strand("GTAT") => "CATA"

# The best solution from Codewars
# def dna_strand(dna)
#   # tr - http://ruby-doc.org/core-2.5.3/String.html#method-i-tr
#   dna.tr('ACTG', 'TGAC')
# end

def dna_strand(dna)
  dna.gsub(/[ATCG]/, 'A' => 'T', 'T' => 'A', 'C' => 'G', 'G' => 'C')
end

p dna_strand('ATTGC')

describe '#dna_strand' do
  it 'replaces a string according to pattern' do
    expect(dna_strand('ATTGC')).to eq('TAACG')
  end
end
