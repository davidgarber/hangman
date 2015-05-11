class String

  def hangman(word)
    if word.length == 6
      answer = word.split
      guessed_answer = Array.new(6, "_")
      guessed_answer.guess(letter)

    else
      puts("Need a 6 letter word")
    end
  end

  def guess(letter)


end
