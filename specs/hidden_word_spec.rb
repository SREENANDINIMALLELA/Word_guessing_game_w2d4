require("minitest/autorun")
require("minitest/rg")
require_relative("../Player.rb")
require_relative("../Hidden_word.rb")


class TestHiddenWord< MiniTest::Test
  def setup()
 @hidden_word = HiddenWord.new("hello world")
  end
  def test_phrase()
    assert_equal("hello world" , @hidden_word.phrase())
  end
  
end
