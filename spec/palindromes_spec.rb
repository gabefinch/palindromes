require('rspec')
require('palindromes')

describe('String#palindromes') do

  it('returns false when it is not a palindrome') do
    expect('racecare'.palindromes()).to eq(false)
  end

  it('returns true when given a palindrome') do
    expect('racecar'.palindromes()).to eq(true)
  end

end
