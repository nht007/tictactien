require 'player'

class CpuPlayer < Player
  attr_accessor :ai
  
  def initialize(ai)
    @ai = ai  
  end
  
  def perform_move(board)
    move = @ai.calculate_move(board)
    
    board.add_piece(@token, move)
  end
end