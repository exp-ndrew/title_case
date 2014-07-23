require('rspec')
require('title_case')

describe('title_case') do
  it("capitalizes the first letter of the first word") do
    title_case('cheers').should(eq('Cheers'))
  end
  it("capitalizes the first letter of the last word") do
    title_case('cheers mate').should(eq('Cheers Mate'))
  end
  it("capitalizes the first letter of all words in a sentence") do
    title_case('the running man').should(eq('The Running Man'))
  end
  it("does not capitalize 'minor words' unless they are first or last in the sentence") do
    title_case('the catcher in the rye').should(eq('The Catcher in the Rye'))
  end

end
