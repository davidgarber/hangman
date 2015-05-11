require('rspec')
require('hangman')

describe(Hangman) do

  describe('#answer') do
    it("gives a six letter answer") do
      test_word = Hangman.new(answer: "horses")
      expect(test_word.answer()).to(eq(["h", "o", "r", "s", "e", "s"]))
    end
  end

  describe('#user_guess') do
    it("checks to see if the letter is in the answer") do
      test_word = Hangman.new(answer: "horses")
      choice = "h"
      expect(test_word.user_guess(choice)).to(eq(["h", "_", "_", "_", "_", "_"]))
    end
  end
end
