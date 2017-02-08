require('minitest/autorun')
require('minitest/rg')
require_relative('../snake.rb')
require_relative('../board.rb')

class TestSnake < Minitest::Test

def setup()

  @new_board = Board.new()
  @new_snake = Snake.new("Snake1", 17, 7)

end

def test_snake_existence
  assert_equal("Snake1", @new_snake.name)
end

def test_snake_starting_point
  assert_equal(17, @new_snake.starting_point)
end

def test_snake_ending_point
  assert_equal(7, @new_snake.ending_point)
end

end