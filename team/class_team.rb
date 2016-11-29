class Team
  #attr_accessor :team_name, :team_members, :team_coach

  def initialize(team_name, team_members, team_coach)
    @team_name = team_name
    @team_members = team_members
    @team_coach = team_coach
  end

  def get_team_name
    return @team_name
  end

  def get_team_members
    return @team_members
  end

  def get_team_coach
    return @team_coach
  end

def set_coach_name(coach)
 @team_coach = coach
end

def add_player(new_player)
  @team_members.push(new_player)
end









end