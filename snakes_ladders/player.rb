class Player
  
  attr_accessor :name, :player_position, :array_of_ladders, :array_of_snakes
  
  def initialize(name, array_of_ladders, array_of_snakes)
    @name = name
    @player_position = 1
    @array_of_ladders = array_of_ladders
    @array_of_snakes = array_of_snakes
  end

  def add_dice_to_player_position(dice, array_of_ladders, array_of_snakes)
    dice = dice.roll_dice
    @player_position += dice

    for position_snake in array_of_snakes
      if position_snake.starting_point == @player_position
        @player_position = position_snake.ending_point
      end
    end
    for position_ladder in array_of_ladders
      if position_ladder.starting_point == @player_position
        @player_position = position_ladder.ending_point
      end
    end
  end

end