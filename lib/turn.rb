require 'pry'
require './lib/card'
require './lib/deck'
require './lib/player'


class Turn
  attr_reader :player1, :player2, :spoils_of_war, :basic, :war, :mutually_assured_destruction, :spoils_of_war

  def initialize(player1, player2, spoils_of_war = [])
    @player1 = player1
    @player2 = player2
    @spoils_of_war = spoils_of_war
    @basic = basic
    @war = war
    @mutually_assured_destruction = mutually_assured_destruction
    @winner = nil
    @loser = nil



end

def type
  if player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
    :basic
  elsif (player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)) && (player1.deck.rank_of_card_at(1) == player2.deck.rank_of_card_at(1))
    :mutually_assured_destruction
  elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)
    :war
  end
end

def winner

  if self.type == :basic
    if player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0)
      @winner = player1
      @loser = player2
    elsif player1.deck.rank_of_card_at(0) < player2.deck.rank_of_card_at(0)
      @winner = player2
      @loser = player1
    end
    @winner
  elsif self.type == :war
    if player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2)
      @winner = player1
      @loser = player2
    elsif player1.deck.rank_of_card_at(2) < player2.deck.rank_of_card_at(2)
      @winner = player2
      @loser = player1
    end
    @winner
  elsif self.type == :mutually_assured_destruction
    return "No Winner"
  end
end

def pile_cards
  if self.type == :basic
    @spoils_of_war << player1.deck.cards[0]
    @spoils_of_war << player2.deck.cards[0]
    player1.deck.remove_card
    player2.deck.remove_card
  elsif self.type == :war
    @spoils_of_war << player1.deck.cards[0..2]
    @spoils_of_war << player2.deck.cards[0..2]
    player1.deck.remove_card
    player1.deck.remove_card
    player1.deck.remove_card
    player2.deck.remove_card
    player2.deck.remove_card
    player2.deck.remove_card
  elsif self.type == :mutually_assured_destruction
    player1.deck.remove_card
    player1.deck.remove_card
    player1.deck.remove_card
    player2.deck.remove_card
    player2.deck.remove_card
    player2.deck.remove_card
  end
end

def award_spoils(player)

    @spoils_of_war.each do |card|
      player.deck.cards << card
  end
  end

end




# if player1 == player_who_gets_cards
#   player1.deck.cards << @spoils_of_war
# elsif player2 == player_who_gets_cards
#   player1.deck.cards << @spoils_of_war
#end
#if player_who_gets_cards == player1
  #self.spoils_of_war.each do |card|
#  player1.deck.cards << card
#end
#elsif self.player_who_gets_cards == player2
  #self.spoils_of_war.each do |card|
  #player2.deck.cards << card
#end
#else
#{}"somethings wrong"
#end
