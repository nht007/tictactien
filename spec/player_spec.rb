require '../lib/player'

describe "Player" do
  it "exists" do
    Player.new.should_not be_nil
  end
  
  it "perform a move" do
    board = mock("Board")  
    player = Player.new
    player.perform_move(available_spaces).should be_true
  end  
end