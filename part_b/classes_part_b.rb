class Team

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def add_player(new_player)
    @players << new_player
  end

  def player_in_team?(player)
    @players.include?(player)
  end

  def has_won?(true_or_false)
    return true_or_false == true ? @points += 1 : @points += 0
  end

end
