require 'spec_helper'

describe "PlayerFactory" do
  it "creates a random cpu player" do
    random_cpu = PlayerFactory.create_player('Random CPU')
    
    random_cpu.class.should == CpuPlayer
    random_cpu.ai.class.should == RandomAi
  end
end