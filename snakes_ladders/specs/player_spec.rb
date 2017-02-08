require('minitest/autorun')
require('minitest/rg')
require_relative('../snake.rb')
require_relative('../ladder.rb')
require_relative('../dice.rb')
require_relative('../player.rb')


class TestPlayer < Minitest::Test

def setup()
  
  @new_snake_1 = Snake.new("Snake1", 17, 7)
  @new_snake_2 = Snake.new("Snake2", 54, 34)
  @new_snake_3 = Snake.new("Snake3", 62, 19)
  @new_snake_4 = Snake.new("Snake4", 64, 60)
  @new_snake_5 = Snake.new("Snake5", 87, 24)
  @new_snake_6 = Snake.new("Snake6", 93, 73)
  @new_snake_7 = Snake.new("Snake1", 95, 75)
  @new_snake_8 = Snake.new("Snake1", 99, 78)

  @new_ladder_1 = Ladder.new("Ladder1", 4, 14)
  @new_ladder_2 = Ladder.new("Ladder2", 9, 30)
  @new_ladder_3 = Ladder.new("Ladder3", 20, 38)
  @new_ladder_4 = Ladder.new("Ladder4", 28, 84)
  @new_ladder_5 = Ladder.new("Ladder5", 40, 59)
  @new_ladder_6 = Ladder.new("Ladder6", 51, 67)
  @new_ladder_7 = Ladder.new("Ladder7", 63, 81)
  @new_ladder_8 = Ladder.new("Ladder8", 71, 91)

  @new_player = Player.new("Jeff")

end

  def test_player_name
    assert_equal("Jeff", @new_player.name)
  end

  def test_player_position
    assert_equal(1, @new_player.player_position)
  end

  

end