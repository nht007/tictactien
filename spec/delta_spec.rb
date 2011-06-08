require 'spec_helper'

describe "Delta" do
  it "contains a position and a player token" do
    loc = [0, 0]
    token = 'x'
    
    delta = Delta.new(loc, token)
    
    delta.loc.first.should == 0
    delta.loc.last.should == 0
    delta.token.should == 'x'
  end
end