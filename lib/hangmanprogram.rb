class Hangman
  attr_reader :answer
  @@guessed_answer = Array.new(6, "_")

  def initialize(attributes)
    @answer = attributes.fetch(:answer).split
  end
  
  def self.set_answer(word)
    if word.length == 6
      @answer = word.split
      @guessed_answer = Array.new(6, "_")
    else
      puts("Need a 6 letter word")
    end
  end

end


#
# answer_array.each do |letter|
#     if choice.include?
#
#     else #false output
