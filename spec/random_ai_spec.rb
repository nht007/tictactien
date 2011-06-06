require '../lib/random_ai'
require '../lib/board'

describe "RandomAi" do
  it "calculates a random move" do
    random_ai = RandomAi.new
    board = Board.new
    
    random_ai.should_receive(:rand).with(9).and_return(5)
    random_ai.calculate_move(board).should == board.available_spaces[5]
  end
  
end