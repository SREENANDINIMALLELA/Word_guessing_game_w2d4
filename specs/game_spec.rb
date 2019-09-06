require("minitest/autorun")
require("minitest/rg")
require_relative("../Player.rb")
require_relative("../Hidden_word.rb")
require_relative("../Game.rb")
class TestHiddenWord< MiniTest::Test
  def setup()
      @player = Player.new("nandini" , 6)
      @hidden_word = HiddenWord.new("hello world")
       @guessed_letter = []
      @game = Game.new(@player , @hidden_word , @guessed_letter)
  end
def test_add_letter_to_guessed_letter()
  assert_equal(["l"] , @game.add_guessed_letter("l"))
end
def test_displayed_word()
  assert_equal("**ll* ***l*" , @game.displayed_word("l"))
  assert_equal("*ell* ***l*" , @game.displayed_word("e"))
  assert_equal("hell* ***l*" , @game.displayed_word("h"))
  assert_equal("hello *o*l*" , @game.displayed_word("o"))
    assert_equal("hello *o*l*" , @game.displayed_word("l"))
      assert_equal("hello *orl*" , @game.displayed_word("r"))
        assert_equal("you lost the game ", @game.displayed_word("w"))
end
def test_letter_appears()
  assert_equal(true ,  @hidden_word.letter_appear("l"))
end
end
