require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

class Game


  def initialize


    p "Welcome to War! (or Peace) This game will be played with 52 cards.
    The players today are Megan and Aurora.
    Type 'GO' to start the game!
    ------------------------------------------------------------------"
  end

  def start

  turn_count = 0
  # loop do
    turn.type
    winner = turn.winner
    turn.pile_cards
    turn.award_spoils(winner)
    # turn_count +=1
    # if  player1.haslost?
    #   p "#{player1} has won the game!"
    #   break
    # elsif player2.haslost?
    #    p "#{player1} has won the game!"
    #    break
    # elsif turn_count == 1000000
    #    p "DRAW"
    #    break
    #  end
    #  end
  end
end
