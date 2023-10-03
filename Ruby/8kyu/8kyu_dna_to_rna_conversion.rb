# frozen_string_literal: true

require 'rspec'

# Deoxyribonucleic acid, DNA is the primary information storage molecule in biological systems.
# It is composed of four nucleic acid bases Guanine ('G'), Cytosine ('C'), Adenine ('A'), and Thymine ('T').

# Ribonucleic acid, RNA, is the primary messenger molecule in cells. RNA differs slightly from DNA its chemical
# structure and contains no Thymine. In RNA Thymine is replaced by another nucleic acid Uracil ('U').

# Create a funciton which translates a given DNA string into RNA.

# For example:

# dna_to_rna("GCAT") => ("GCAU")

def dna_to_rna(dna)
  dna.tr('T', 'U')
end

p dna_to_rna('GCAT')

describe '#dna_to_rna' do
  it 'converts to the proper RNA' do
    expect(dna_to_rna('GCAT')).to eq('GCAU')
  end
end
