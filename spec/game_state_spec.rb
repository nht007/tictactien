require 'spec_helper'

describe "GameState" do
  it "creates a snapshot of the current game state" do
    board = Board.new
    current_player = 'x'
    
    game_state = GameState.new(board, current_player)
    
    
  end
end