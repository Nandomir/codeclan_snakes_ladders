require('minitest/autorun')
require('minitest/rg')
require_relative('../dice.rb')
require_relative('../player.rb')

class TestDice < Minitest::Test

  def setup
    @new_player = Player.new("Jeff")
    @new_dice = Dice.new()
  end

  def test_return_dice_face

    assert_equal(1, @new_dice.dice_face)

  end

  def test_roll_dice
    random_number = @new_dice.roll_dice
    array_1_to_6 = [1,2,3,4,5,6]
    if array_1_to_6.include?(random_number)
      asserted = true
    end
    assert_equal(true, asserted)

  end


end