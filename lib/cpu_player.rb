require 'player'

class CpuPlayer < Player
  attr_accessor :ai
  
  def initialize(ai)
    @ai = ai  
  end
  
  def perform_move(board)
    the_move = @ai.calculate_move(board)
    
    # board.add_piece(@token, the_move)
  end
end