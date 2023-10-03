# frozen_string_literal: true

require 'rspec'

# The first input array contains the correct answers to an exam, like ["a", "a", "b", "d"]. The second one
# is "answers" array and contains student's answers.

# The two arrays are not empty and are the same length. Return the score for this array of answers,
# giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer(empty string).

# If the score < 0, return 0.

# For example:

# check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"]) => 6
# check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""]) => 7
# check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"]) => 16
# check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"]) => 0

# The good solution form Codewars
# def check_exam(correct_answers, student_answers)
#   raw_result = correct_answers.zip(student_answers).map { |correct, answer| score(correct, answer) }.sum
#   [0, raw_result].max
# end

# def score(correct, answer)
#   return 4 if answer == correct  # Right
#   return 0 if answer == ''       # No answer
#   -1 # Wrong
# end

def check_exam(array1, array2)
  # zip - https://ruby-doc.org/core-2.5.1/Array.html#method-i-zip
  # a = [ 4, 5, 6 ]
  # b = [ 7, 8, 9 ]
  # [1, 2, 3].zip(a, b) #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
  result = array1.zip(array2).map do |elem|
    if elem[1].empty?
      0
    else
      elem[0] == elem[1] ? 4 : -1
    end
  end
  result.sum.negative? ? 0 : result.sum
end

# The first array contains correct answers, the second contains answers from a student
p check_exam(%w[a a b b], ['', 'c', 'b', 'd'])

describe '#check_exam' do
  it 'returns 6 points for an exam if you succeed' do
    expect(check_exam(%w[a a b b], %w[a c b d])).to eq(6)
  end

  it 'returns 0 points for an exam if you fail' do
    expect(check_exam(%w[b c b a], ['', 'a', 'a', 'c'])).to eq(0)
  end
end
