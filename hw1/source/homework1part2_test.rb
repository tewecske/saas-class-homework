require "test/unit"
require "./homework1part2"

class Homework1part2Test < Test::Unit::TestCase


  def test_winner

    h = Homework1part2.new

    assert_equal ["Dave", "S"], h.rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ])
    assert_equal ["Dave", "R"], h.rps_game_winner([ [ "Armando", "S" ], [ "Dave", "R" ] ])
  end

  def test_number_of_players
    h = Homework1part2.new

    assert_raises Homework1part2::WrongNumberOfPlayersError do
      h.rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ], [ "Tewe", "r"] ])
    end
    assert_nothing_raised Homework1part2::WrongNumberOfPlayersError do
      h.rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ])
    end
  end

  def test_strategy
    h = Homework1part2.new

    assert_raises Homework1part2::NoSuchStrategyError do
      h.rps_game_winner([ [ "Armando", "P" ], [ "Dave", "x" ] ])
    end
    assert_nothing_raised Homework1part2::NoSuchStrategyError do
      h.rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ])
      h.rps_game_winner([ [ "Armando", "R" ], [ "Dave", "P" ] ])
    end
  end

  def test_same_strategy
    h = Homework1part2.new

    assert_equal ["Armando", "S"], h.rps_game_winner([ [ "Armando", "S" ], [ "Dave", "S" ] ])

  end

  def test_tournament

    assert_equal ["Richard", "R"], h.rps_tournament_winner( [
                                 [
                                     [ ["Armando", "P"], ["Dave", "S"] ],
                                     [ ["Richard", "R"], ["Michael", "S"] ],
                                 ],
                                 [
                                     [ ["Allen", "S"], ["Omer", "P"] ],
                                     [ ["David E.", "R"], ["Richard X.", "P"] ]
                                 ]
                             ]
 )

  end

end