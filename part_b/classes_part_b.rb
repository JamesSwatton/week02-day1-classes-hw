class Team

  attr_accessor :name, :players, :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def add_player(new_player)
    @players << new_player
  end

  def player_in_team?(player)
    @players.include?(player)
  end

end
