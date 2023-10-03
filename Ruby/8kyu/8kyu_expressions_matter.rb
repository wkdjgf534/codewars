# frozen_string_literal: true

require 'rspec'

# Task

# Given three integers a ,b ,c, return the largest number obtained after inserting the following
# operators and brackets: +, *, ().

# Consider an Example :

# With the numbers are 1, 2 and 3 , here are some ways of placing signs and brackets:

# 1 * (2 + 3) = 5
# 1 * 2 * 3 = 6
# 1 + 2 * 3 = 7
# (1 + 2) * 3 = 9

# So the maximum value that you can obtain is 9.

# Notes

# The numbers are always positive.
# You can use the same operation more than once.
# It's not necessary to place all the signs and brackets.
# Repetition in numbers may occur .
# You cannot swap the operands. For instance, in the given example you cannot get expression (1 + 3) * 2 = 8.

# Input >> Output Examples:

# 1 - expressionsMatter(1, 2, 3) => 9

# Explanation:
# After placing signs and brackets, the Maximum value obtained from the expression (1+2) * 3 = 9.

# 2 - expressionsMatter(1, 1, 1) => 3

# Explanation:
# After placing signs, the Maximum value obtained from the expression is 1 + 1 + 1 = 3.

# 3 - expressionsMatter(9, 1, 1) => 18

# Explanation:
# After placing signs and brackets, the Maximum value obtained from the expression is 9 * (1+1) = 18.

def expression_matter(a, b, c)
  exp1 = a + b + c
  exp2 = a * b * c
  exp3 = (a + b) * c
  exp4 = (a * b) + c
  exp5 = a + (b * c)
  exp6 = a * (b + c)
  [exp1, exp2, exp3, exp4, exp5, exp6].max
end

p expression_matter(5, 6, 1)

describe '#expression_matter' do
  it 'calculates the correct answer for first variant' do
    expect(expression_matter(2, 1, 2)).to eq(6)
  end

  it 'calculates the correct answer for second variant' do
    expect(expression_matter(5, 1, 3)).to eq(20)
  end
end
