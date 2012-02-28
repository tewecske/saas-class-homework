class Homework1part2

  class WrongNumberOfPlayersError < StandardError ; end
  class NoSuchStrategyError < StandardError ; end

  def rps_game_winner(game)
    raise WrongNumberOfPlayersError.new unless game.length == 2
    game.each { |p| if p.last !~ /[rps]/i then raise NoSuchStrategyError.new end }

    if game[0].last == game[1].last
      return game[0]
    end

    decide(game)

  end

  def decide(game)
    rps = {'R' => 'S', 'P' => 'R', 'S' => 'P'}

    if rps[game[0].last] == game[1].last
      game[0]
    else
      game[1]
    end
  end

  def rps_tournament_winner(tournament)

  end


end