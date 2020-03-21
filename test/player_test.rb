require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require 'pry'

class PlayerTest < Minitest::Test

def test_does_it_exist
  card1 = Card.new(:diamond, 'Queen', 12)
  card2 = Card.new(:spade, '3', 3)
  card3 = Card.new(:heart, 'Ace', 14)
  card_set = [card1, card2, card3]
  deck = Deck.new(card_set)

  player = Player.new('Clarisa', deck)

  assert_instance_of Player, player
end

def test_it_has_readable_attributes

  card1 = Card.new(:diamond, 'Queen', 12)
  card2 = Card.new(:spade, '3', 3)
  card3 = Card.new(:heart, 'Ace', 14)
  card_set = [card1, card2, card3]
  deck = Deck.new(card_set)

  player = Player.new("Clarisa", deck)

  assert_equal deck, player.deck
end

def test_it_can_lose

  card1 = Card.new(:diamond, 'Queen', 12)
  card2 = Card.new(:spade, '3', 3)
  card3 = Card.new(:heart, 'Ace', 14)
  card_set = [card1, card2, card3]
  deck = Deck.new(card_set)

  player = Player.new('Clarisa', deck)

  assert_equal false, player.has_lost?
end

def test_player_remove_card

  card1 = Card.new(:diamond, 'Queen', 12)
  card2 = Card.new(:spade, '3', 3)
  card3 = Card.new(:heart, 'Ace', 14)
  card_set = [card1, card2, card3]
  deck = Deck.new(card_set)

  player = Player.new('Clarisa', deck)
assert_equal card1, player.deck[1]

  end

end
