require 'minimax_node'

class Minimax
  attr_accessor :board, :current_player, :tree_root

  # minimax(player,board)
  #   if(game over in current board position)
  #       return winner
  #   children = all legal moves for player from this board
  #   if(max's turn)
  #       return maximal score of calling minimax on all the children
  #   else (min's turn)
  #       return minimal score of calling minimax on all the children
  
  def initialize(board, current_player)
    @board = board
    @current_player = current_player
    
    @tree_root = build_tree
  end

  def get_next_move
    true
  end

  private

  def build_tree
    true
  end
end