class Dice

  attr_reader :dice_face
  def initialize

    @dice_face = 1

  end

  def roll_dice

    return rand(1..6)

  end


end