require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../card_game.rb")
require_relative("../card.rb")

class CardTest < Minitest::Test

  def setup
    @card1 = Card.new("Clubs", 8)
    @card2 = Card.new("Spades", 1)
    @card3 = Card.new("Spades", 5)

    @card_game = CardGame.new()

    @cards = [@card1, @card2, @card3]
  end

  def test_card_has_suit()
    assert_equal("Clubs", @card1.suit)
  end

  def test_card_has_value()
    assert_equal(1, @card2.value)
  end

  def test_card_is_ace()
    result = @card_game.check_for_ace(@card2)
    assert_equal(true, result)
  end

  def test_highest_card()
    result = @card_game.highest_card(@card1, @card2)
    assert_equal(@card1, result)
  end

  def test_total_value()
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 14", result)
  end

end
