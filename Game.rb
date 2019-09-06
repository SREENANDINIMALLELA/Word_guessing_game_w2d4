class Game
  def initialize(player , hidden_word , guessed_letter)
    @player = player
    @hidden_word = hidden_word
    @guessed_letter = guessed_letter
  end


  def add_guessed_letter(guessed_letter)
    @guessed_letter << guessed_letter
  end




  def displayed_word(guessed_word)
    guessed_array = @guessed_letter<< guessed_word
    lives =  @player.lives()
    lives =guessed_array.length()
    if lives <= 6
      displayed_word = ""
      word_array = (@hidden_word.phrase).split(" ")
      count = word_array.count()
      for word in word_array
        letter_array =  word.split("")
        for letter in letter_array
          if  ( guessed_array.include?letter)
            displayed_word << letter
          else
            displayed_word << "*"
          end
        end
        if count != 1
          displayed_word << " "
          count -= 1
        end
      end
      return displayed_word
    end
return "you lost the game "
  end

end
