# frozen_string_literal: true

require 'rspec'

# Complete the function so that it finds the mean of the three scores passed to it and returns the letter value associated with that grade.
# Numerical Score 	Letter Grade
# 90 <= score <= 100 	'A'
# 80 <= score < 90 	'B'
# 70 <= score < 80 	'C'
# 60 <= score < 70 	'D'
# 0 <= score < 60 	'F'

# Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

# Yet another solution from codewars
# def get_grade(s1, s2, s3)
#   case (s1 + s2 + s3).fdiv 3
#   when 90..100 then 'A'
#   when 80...90 then 'B'
#   when 70...80 then 'C'
#   when 60...70 then 'D'
#   else 'F'
#   end
# end

def get_grade(s1, s2, s3)
  average_grade = (s1 + s2 + s3) / 3
  return 'A' if average_grade >= 90
  return 'B' if average_grade.between?(80, 89)
  return 'C' if average_grade.between?(70, 79)
  return 'D' if average_grade.between?(60, 69)

  'F'
end

p get_grade(70, 70, 100)

describe '#get_grade' do
  it 'returns grade \'F\'' do
    expect(get_grade(30, 30, 30)).to eq('F')
  end

  it 'returns grade \'C\'' do
    expect(get_grade(71, 72, 73)).to eq('C')
  end

  it 'returns grade \'B\'' do
    expect(get_grade(83, 84, 85)).to eq('B')
  end

  it 'returns grade \'A\'' do
    expect(get_grade(95, 96, 97)).to eq('A')
  end
end
