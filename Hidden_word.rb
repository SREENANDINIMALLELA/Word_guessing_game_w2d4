class HiddenWord
  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end
  def letter_appear(guessed_word)
    (@phrase).include?(guessed_word)
  end

end
