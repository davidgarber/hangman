class Hangman
  attr_reader(:answer)

  def initialize(attributes)
    @answer = attributes[:answer]
  end
end
