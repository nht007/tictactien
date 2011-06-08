require 'spec_helper'

describe "MinimaxNode" do
  it "is created with a grid and a move" do
    grid = [[nil, nil, nil],
            [nil, nil, nil],
            [nil, nil, nil]]  
    last_move = [0, 0]
    
    minimax_node = MinimaxNode.new(grid, last_move)
    
    minimax_node.grid.should == grid
    minimax_node.last_move.should == last_move
    
  end
  
  it "evaluates a score for a game in progress" do
    grid = [[nil, nil, nil],
            [nil, nil, nil],
            [nil, nil, nil]]  
    last_move = [0, 0]
    
    current_player = Player.new('x')
    
    minimax_node = MinimaxNode.new(grid, last_move)
    
    minimax_node.evaluate(current_player)
    
    minimax_node.score.should be_nil
  end
  
  it "evaluates the score for a winning game" do
    grid = [['x', nil, nil],
            [nil, 'x', nil],
            [nil, nil, 'x']]  
    last_move = [0, 0]
    
    current_player = Player.new('x')
    
    minimax_node = MinimaxNode.new(grid, last_move)
    
    minimax_node.evaluate(current_player)
    
    minimax_node.score.should == 1
  end
  
  it "evaluates the score for a losing game" do
    grid = [[nil, nil, nil],
            ['o', 'o', 'o'],
            [nil, nil, nil]]  
    last_move = [0, 0]
    
    current_player = Player.new('x')
    
    minimax_node = MinimaxNode.new(grid, last_move)
    
    minimax_node.evaluate(current_player)
    
    minimax_node.score.should == -1
  end
  
  it "evaluates the score for a cat game" do
    grid = [['x', 'x', 'o'],
            ['o', 'o', 'x'],
            ['x', 'o', 'x']]  
    last_move = [0, 0]
    
    current_player = Player.new('x')
    
    minimax_node = MinimaxNode.new(grid, last_move)
    
    minimax_node.evaluate(current_player)
    
    minimax_node.score.should == 0
  end
end