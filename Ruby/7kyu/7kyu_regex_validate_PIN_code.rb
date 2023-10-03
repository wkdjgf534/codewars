# frozen_string_literal: true

require 'rspec'

# ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything
# but exactly 4 digits or exactly 6 digits.

# If the function is passed a valid PIN string, return true, else return false.
# Examples (Input --> Output)

# '1234'  --> true
# '12345' --> false
# 'a234'  --> false

def validate_pin(pin)
  return '' if pin.nil?

  pin.match? /\A\d{4}(\d{2})?\z/
end

p validate_pin('1234')

describe '#nato' do
  context 'false' do
    it 'returns false when an empty string string' do
      expect(validate_pin('')).to be_falsey
    end

    it 'returns false when a string contanis 4 random letters' do
      expect(validate_pin('asdf')).to be_falsey
    end

    it 'returns false when a string contains 6 random letters' do
      expect(validate_pin('')).to be_falsey
    end
  end

  context 'true' do
    it 'returns true when a string contains 4 digit pin' do
      expect(validate_pin('1234')).to be_truthy
    end

    it 'returns true when a string contains 6 digit pin' do
      expect(validate_pin('123456')).to be_truthy
    end
  end
end


#Test.assert_equals(validate_pin(""),false)
#Test.assert_equals(validate_pin("1"),false)
#Test.assert_equals(validate_pin("1111"),true)
#Test.assert_equals(validate_pin("123456"),true)
#Test.assert_equals(validate_pin("1234567890"),false)
#Test.assert_equals(validate_pin("12"),false)