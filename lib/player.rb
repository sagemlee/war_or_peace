require './lib/deck'
require './lib/card'

class Player
  attr_reader :name, :player_deck

def initialize(name, player_deck)
    @name = name
    @player_deck = player_deck
  end


end
