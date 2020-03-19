require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require 'pry'

def test_does_it_exist
  player = Player.new(name, deck)
  assert_instance_of Player, player
end

def test_it_has_readable_attributes
  card1 = Card.new(:diamond, 'Queen', 12)
  card2 = Card.new(:spade, '3', 3)
  card3 = Card.new(:heart, 'Ace', 14)
  card_set = [card1, card2, card3]
  deck = Deck.new(card_set)

  player = Player.new('Clarisa', deck)

  assert_equal player, Player.deck
  assert_equal player, Player.name
end
