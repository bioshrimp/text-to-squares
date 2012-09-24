require "test_helper"

class SquareTest < Test::Unit::TestCase
  attr_reader :square

  def setup
    @square = Square.new("a")
  end

  def test_creation
    assert square
    # assert that square is an instance of Square
  end

  def test_color_returns_the_color_assigned_to_the_character
    assert_equal square.color, Application.colors["a"]
    # assert that square.color returns the color which is assigned to "a"
  end
end
