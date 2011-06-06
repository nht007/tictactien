require 'ai'

class RandomAi < Ai
  def calculate_move(board)
    board.available_spaces.sample
  end
end