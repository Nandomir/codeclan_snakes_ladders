require('minitest/autorun')
require('minitest/rg')
require_relative('../ladder.rb')
require_relative('../board.rb')

class TestLadder < Minitest::Test

def setup()

  @new_board = Board.new()
  @new_ladder = Ladder.new("Ladder1", 4, 14)

end

def test_ladder_existence
  assert_equal("Ladder1", @new_ladder.name)
end

def test_ladder_starting_point
  assert_equal(4, @new_ladder.starting_point)
end

def test_ladder_ending_point
  assert_equal(14, @new_ladder.ending_point)
end

end