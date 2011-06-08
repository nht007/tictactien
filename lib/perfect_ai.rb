require 'ai'
require 'minimax'

class PerfectAi < Ai
  def calculate_move(board, current_player)
    if board.available_spaces.count == 9
      return [0,0]
    end
    
    minimax = Minimax.new(board, current_player)
    minimax.get_next_move
  end  
end