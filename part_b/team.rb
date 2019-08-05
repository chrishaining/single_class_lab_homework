class SportsTeam

attr_accessor(:team_name, :players, :coach, :points)

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def get_team_name()
  #   return @team_name
  # end

  # def get_players_names()
  #   return @players
  # end

  # def get_coach_name()
  #   return @coach
  # end

  # def set_coach_name(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player()
    @players << 'Chris'
  end

  def check_player_exists(name)
    @players.include?(name)
  end

  def team_points(result)
    @points == 0
    return @points += 1 if result == 'win'
  end


end
