require("minitest/autorun")
require("minitest/rg")
require_relative("../Player.rb")


class TestPlayer< MiniTest::Test
  def setup()
    @player = Player.new("nandini" , 6)
  end
  def test_lives()
    assert_equal(6 , @player.lives())
  end
  def test_substract_lives()
    assert_equal(5, @player.substract_lives())
  end
end
