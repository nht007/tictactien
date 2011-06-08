class MinimaxNode
  attr_accessor :grid, :last_move, :score
  
  def initialize(grid, last_move)
    @grid = grid
    @last_move = last_move
  end
  
  def evaluate(current_player)    
    if diagonal_win
      diagonal_win == current_player.token ? @score = 1 : @score = -1
      
    elsif horizontal_win
      horizontal_win == current_player.token ? @score = 1 : @score = -1
      
    elsif vertical_win
      vertical_win == current_player.token ? @score = 1 : @score = -1
      
    elsif game_ended # cat game
      @score = 0
    end
  end
  
  private
  
  def diagonal_win
    # top left to bottom right
    if @grid[0][0] == @grid[1][1] && @grid[1][1] == @grid[2][2] && @grid[0][0]
      return @grid[0][0]
    end
    
    # bottom left to top right
    if @grid[0][2] == @grid[1][1] && @grid[1][1] == @grid[2][0] && @grid[0][2]
      return @grid[0][2]
    end
  end
  
  def horizontal_win
    # top row
    if @grid[0][0] == @grid[0][1] && @grid[0][1] == @grid[0][2] && @grid[0][0]
      return @grid[0][0]
    end
    
    # middle row
    if @grid[1][0] == @grid[1][1] && @grid[1][1] == @grid[1][2] && @grid[1][0]
      return @grid[1][0]
    end
    
    # bottom row
    if @grid[2][0] == @grid[2][1] && @grid[2][1] == @grid[2][2] && @grid[2][0]
      return @grid[2][0]
    end
  end
  
  def vertical_win
    # top row
    if @grid[0][0] == @grid[1][0] && @grid[1][0] == @grid[2][0] && @grid[0][0]
      return @grid[0][0]
    end
    
    # middle row
    if @grid[0][1] == @grid[1][1] && @grid[1][1] == @grid[2][1] && @grid[0][1]
      return @grid[0][1]
    end

    # bottom row
    if @grid[0][2] == @grid[1][2] && @grid[1][2] == @grid[2][2] && @grid[0][2]
      return @grid[0][2]
    end
  end
  
  def game_ended
    @grid.each do |row|
      row.each do |space|
        return false if not space
      end
    end
    return true
  end
end