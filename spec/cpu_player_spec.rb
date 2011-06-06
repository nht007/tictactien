require '../lib/cpu_player'
require '../lib/board'
require '../lib/random_ai'

describe "CpuPlayer" do
  it "it has an AI" do
    cpu_player = CpuPlayer.new(RandomAi.new)
    
    cpu_player.ai.should_not be_nil
  end
  
  it "performs a move" do
    board = Board.new
    cpu_player = CpuPlayer.new(RandomAi.new)
    
    cpu_player.ai.should_receive(:calculate_move).with(board).and_return("the move")
    # board.should_receive(:add_piece).with(cpu_player.token, "the move")
  end
end