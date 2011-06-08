require 'spec_helper'

describe "Game" do
  it "creates a new game" do
    player_one = PlayerFactory.create_player('Random CPU')
    player_two = PlayerFactory.create_player('Random CPU')
    
    game = Game.new(player_one, player_two)
    
    game.player_one.should_not be_nil
    game.player_two.should_not be_nil
    game.board.should_not be_nil
  end  
  
  it "switches the active player" do
    player_one = PlayerFactory.create_player('Random CPU')
    player_two = PlayerFactory.create_player('Random CPU')
    
    game = Game.new(player_one, player_two)
    
    game.switch_active_player.should == player_two
    game.switch_active_player.should == player_one
    game.switch_active_player.should == player_two
  end
end