require 'spec_helper'

describe "RandomAi" do
  it "calculates a random move" do
    random_ai = RandomAi.new
    board = Board.new
    
    available_spaces = mock("list of spaces")
    board.stub!(:available_spaces).and_return(available_spaces)
    available_spaces.should_receive(:sample).and_return("the move")
    
    random_ai.calculate_move(board).should == "the move"
  end
  
end