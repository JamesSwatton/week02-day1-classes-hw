# Part B
# Now we would like you to make a class that represents a sports team.
#
# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.

require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_part_b')

class TestTeam < MiniTest::Test

  def test_for_team_name
    football_team = Team.new('The Losers', ['Bill', 'Will', 'Phil'], 'Mr. Eagle', 0)
    assert_equal('The Losers', football_team.name)
  end

  def test_for_team_players
    football_team = Team.new('The Losers', ['Bill', 'Will', 'Phil'], 'Mr. Eagle', 0)
    assert_equal(['Bill', 'Will', 'Phil'], football_team.players)
  end

  def test_for_team_coach
    football_team = Team.new('The Losers', ['Bill', 'Will', 'Phil'], 'Mr. Eagle', 0)
    assert_equal('Mr. Eagle', football_team.coach)
  end

  def test_to_name_coach
    football_team = Team.new('The Losers', ['Bill', 'Will', 'Phil'], 'Mr. Eagle', 0)
    coach_name = football_team.coach='Mr. Blobby'
    assert_equal('Mr. Blobby', coach_name)
  end

  def test_to_add_player
    football_team = Team.new('The Losers', ['Bill', 'Will', 'Phil'], 'Mr. Eagle', 0)
    football_team.add_player('Crill')
    assert_equal(['Bill', 'Will', 'Phil', 'Crill'], football_team.players)
  end

  def test_to_search_for_player__found
    football_team = Team.new('The Losers', ['Bill', 'Will', 'Phil'], 'Mr. Eagle', 0)
    assert_equal(true, football_team.player_in_team?('Bill'))
  end

  def test_to_search_for_player__not_found
    football_team = Team.new('The Losers', ['Bill', 'Will', 'Phil'], 'Mr. Eagle', 0)
    assert_equal(false, football_team.player_in_team?('Tom'))
  end

  def test_has_score_updated
    football_team = Team.new('The Losers', ['Bill', 'Will', 'Phil'], 'Mr. Eagle', 0)
    football_team.has_won?(true)
    assert_equal(1, football_team.points)
  end

end
