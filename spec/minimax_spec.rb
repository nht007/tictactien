require 'spec_helper'

describe "Minimax" do
  it "builds a tree of minimax nodes" do
    board = Board.new
    current_player = 'x'
    
    minimax = Minimax.new(board, current_player)
    minimax.board.should == board
    minimax.current_player.should == current_player
    minimax.tree_root.should_not be_nil
    end
  
end