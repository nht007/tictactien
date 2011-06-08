require 'cpu_player'
require 'random_ai'

class PlayerFactory
  def self.create_player(player_type)
    if player_type == "Random CPU"
      return CpuPlayer.new(RandomAi.new)
    end
  end
end