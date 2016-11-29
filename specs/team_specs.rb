require ('minitest/autorun')
require ('minitest/rg')
require_relative('../team/class_team')

class TeamSpec < MiniTest::Test

  def test_create_team
    team = Team.new("Team1", ["Dave", "Steve", "Bob"], "Coach1")
    assert_equal(Team, team.class)
  end

  def test_get_team_name
    team = Team.new("Team1", ["Dave", "Steve", "Bob"], "Coach1")
    assert_equal("Team1", team.team_name)
  end

  def test_get_team_members
    team = Team.new("Team1", ["Dave", "Steve", "Bob"], "Coach1")
    assert_equal(["Dave", "Steve", "Bob"], team.team_members)
  end

  def test_get_team_coach
    team = Team.new("Team1", ["Dave", "Steve", "Bob"], "Coach1")
    assert_equal("Coach1", team.team_coach)
  end

  def test_set_coach_name
    team = Team.new("Team1", ["Dave", "Steve", "Bob"], "Coach1")
    team.team_coach = "Coach2"
        assert_equal("Coach2", team.team_coach())
  end

  def test_add_player
    team = Team.new("Team1", ["Dave", "Steve", "Bob"], "Coach1")
    team.team_members.push("Paul")

    assert_equal(4, get_team_members.length())
    team
  end

end
