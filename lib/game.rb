require 'board'

class Game
  attr_accessor :player_one, :player_two, :board, :active_player
  
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    
    @board = Board.new
    @active_player = player_one
  end
  
  def switch_active_player
    if @active_player == player_one
      @active_player = player_two
    elsif @active_player == player_two
      @active_player = player_one
    end
    
    return @active_player
  end
end