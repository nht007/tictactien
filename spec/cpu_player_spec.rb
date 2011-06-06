require '../lib/cpu_player'
require '../lib/board'

describe "CpuPlayer" do
  it "performs a move" do
    board = Board.new
    
    cpu_player = CpuPlayer.new
    cpu_player.perform_move(board).should == true
  end
end