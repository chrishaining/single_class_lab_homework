require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestSportsTeam < MiniTest::Test

def test_team_name
  example_team = SportsTeam.new('Ireland', [], 'Jessica Adams', 1)
  assert_equal('Ireland', example_team.team_name())
end

# def test_team_name # Karolina's alternative version (with a different approach to the array). It also passes.
#     team = SportsTeam.new('Ireland', players = ['Avery Bradley','Jordan Caroline', 'Troy Daniels'] , 'Frank Vogel', 1 )
#     assert_equal('Ireland', team.team_name())
#   end

def test_players_names
  example_team = SportsTeam.new('Ireland', ['Joe', 'Calum'], 'Jessica Adams', 1)
  assert_equal(['Joe', 'Calum'], example_team.players())
end

def test_coach_name
  example_team = SportsTeam.new('Ireland', [], 'Jessica Adams', 1)
  assert_equal('Jessica Adams', example_team.coach())
end

def test_set_coach
  example_team = SportsTeam.new('Ireland', [], 'Jessica Adams', 1)
  example_team.coach = 'Amanda'
  assert_equal('Amanda', example_team.coach())
end

def test_add_new_player
  example_team = SportsTeam.new('Ireland', [], 'Jessica Adams', 1)
  example_team.add_new_player()
  assert_equal(1, example_team.players.count())
end

def test_check_player_exists__true
  example_team = SportsTeam.new('Ireland', ['Chris'], 'Jessica Adams', 1)
  # example_team.check_player_exists('Chris')
  assert_equal(true, example_team.check_player_exists('Chris'))
end

def test_check_player_exists__false
  example_team = SportsTeam.new('Ireland', ['Chris'], 'Jessica Adams', 1)
#  example_team.check_player_exists('Zak')
  assert_equal(false, example_team.check_player_exists('Zak'))
end

def test_team_points
  example_team = SportsTeam.new('Ireland', ['Chris'], 'Jessica Adams', 1)
  # DELETE example_team.team_points('win')
  assert_equal(2, example_team.team_points('win'))
end

end
