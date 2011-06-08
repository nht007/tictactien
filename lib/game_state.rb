class GameState
  attr_accessor :board, :current_player
  
  def initialize(board, current_player)
    @board = board
    @current_player = current_player
  end
end