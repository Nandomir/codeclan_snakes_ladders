require('minitest/autorun')
require('minitest/rg')
require_relative('../board.rb')
require_relative('../snake.rb')
require_relative('../ladder.rb')
require_relative('../dice.rb')
require_relative('../player.rb')


class TestBoard < Minitest::Test

def setup()

@new_board = Board.new()

end

def test_check_arrays_existance
  asserted = @new_board.squares[1]
  assert_equal(2, asserted)
end

end