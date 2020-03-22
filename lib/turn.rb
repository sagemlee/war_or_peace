require './lib/card'
require './lib/deck'
require './lib/player'


class Turn
  attr_reader :player1, :player2, :spoils_of_war, :basic, :war, :mutually_assured_destruction

  def initialize(player1, player2, spoils_of_war = [])
    @player1 = player1
    @player2 = player2
    @spoils_of_war = spoils_of_war
    @basic = basic
    @war = war
    @mutually_assured_destruction = mutually_assured_destruction
end

def type
  if player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
    :basic
  elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)
    :war
  elsif (player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)) && (player1.deck.rank_of_card_at(2) == player2.deck.rank_of_card_at(2))
    :mutually_assured_destruction
  end
end

end
