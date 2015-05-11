
class Hangman
  attr_reader(:answer, :user_guess)

  @@field = ["_", "_", "_", "_", "_", "_"]
  @@wrong_guesses = []
  @@guess_count = 0

  def initialize(attributes)
    @answer = attributes[:answer]
    @answer = @answer.split("")
    @user_guess = attributes[:user_guess]
  end

  def user_guess(letter)
    choice = letter
    if @answer.include?(choice)
      @answer.each_with_index do |letter, index|
        if letter == choice
          @@field[index] = letter
        end
      end
    else
      @@guess_count = @@guess_count.+(1)
      @@wrong_guesses.push(letter)
    end
    @@guess_count
    @@field
  end

end
