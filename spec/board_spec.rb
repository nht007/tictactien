require '../lib/board'

describe "Board" do
  it "returns its new grid" do
    board = Board.new
    board.grid.should == [[nil, nil, nil],
                          [nil, nil, nil],
                          [nil, nil, nil]]
  end
  
  ['x', 'o'].each do |player|
    [
      [[], [[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]]],
      [[[0,0]], [[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]]],
      [[[0,0],[0,1],[0,2]], [[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]]],
      [[[0,0],[0,1],[0,2],[1,0]], [[1,1],[1,2],[2,0],[2,1],[2,2]]],
      [[[0,0],[0,1],[0,2],[1,0],[1,1]], [[1,2],[2,0],[2,1],[2,2]]],
      [[[0,0],[0,1],[0,2],[1,0],[1,1],[1,2]], [[2,0],[2,1],[2,2]]],
      [[[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0]], [[2,1],[2,2]]],
      [[[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1]], [[2,2]]],
      [[[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]], []],
    ].each do |pieces, spaces|
      it "finds available spaces" do
        board = Board.new
        pieces.each do |piece|
          board.add_piece(player, piece.first, piece.last)
        end
        board.available_spaces.should == spaces
      end
    end
  end
  
  ['x', 'o'].each do |player|
    [
      [[0,0], [[player, nil, nil], [nil, nil, nil], [nil, nil, nil]]],
      [[0,1], [[nil, player, nil], [nil, nil, nil], [nil, nil, nil]]],
      [[0,2], [[nil, nil, player], [nil, nil, nil], [nil, nil, nil]]],
      [[1,0], [[nil, nil, nil], [player, nil, nil], [nil, nil, nil]]],
      [[1,1], [[nil, nil, nil], [nil, player, nil], [nil, nil, nil]]],
      [[1,2], [[nil, nil, nil], [nil, nil, player], [nil, nil, nil]]],
      [[2,0], [[nil, nil, nil], [nil, nil, nil], [player, nil, nil]]],
      [[2,1], [[nil, nil, nil], [nil, nil, nil], [nil, player, nil]]],
      [[2,2], [[nil, nil, nil], [nil, nil, nil], [nil, nil, player]]],
    ].each do |location, grid|
      it "adds a piece to its grid at location #{location.first},#{location.last}" do
        board = Board.new
        board.add_piece(player, location.first, location.last)
        board.grid.should == grid
      end
    end
  end

  ['x', 'o'].each do |player|
    [
      [[], nil],
      [[[0,0],[1,1],[2,2]], player],
      [[[0,2],[1,1],[2,0]], player],
      [[[0,0],[0,1],[0,2]], player],
      [[[1,0],[1,1],[1,2]], player],
      [[[2,0],[2,1],[2,2]], player],
      [[[0,0],[1,0],[2,0]], player],
      [[[0,1],[1,1],[2,1]], player],
      [[[0,2],[1,2],[2,2]], player],
      ].each do |pieces, result|
        it "checks for a winning player" do
        board = Board.new
        pieces.each do |piece|
          board.add_piece(player, piece.first, piece.last)
        end
        board.calculate_win.should == result
      end
    end
  end
end