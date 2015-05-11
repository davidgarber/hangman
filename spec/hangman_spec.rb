require('rspec')
require('hangman')

describe(Hangman) do

  describe('#answer') do
    it("gives a six letter answer") do
    test_word = Hangman.new(answer: "horses")
    expect(test_word.answer()).to(eq("horses"))
    end
  end
end
