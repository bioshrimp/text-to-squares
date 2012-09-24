require "test_helper"


class ApplicationTest < Test::Unit::TestCase
  attr_reader :app 

  def setup
    @app = Application.new("something")
  end

  def test_colors_returns_a_hash
    colors = Application.colors
    assert colors.instance_of?(Hash)
    # assert that colors is a hash
  end

  def test_render_returns_the_rendered_html_output
    assert app.render

    # make it so that the method render does all the stuff
    # that now run.rb does with the ERB.new thing etc.
  end

  def test_colors_returns_a_hash_containing_a_value_for_a
    colors = Application.colors["a"]
    assert_equal colors, "000000"
    # assert that color is the color which is assigned to "a"
  end

  def test_creation
    assert app.instance_of?(Application)
    # assert that application is an instance of Application
  end

  def test_picture_returns_a_picture
    assert app.picture.instance_of?(Picture)
    # assert that the method picture returns an instance of Picture
  end

  def test_squares_returns_an_array_of_squares
    assert app.squares.first.instance_of?(Square)
    # assert that application.squares returns an array where the first object 
    # is an instance of Square. 
    #hint: you will need to implement the Picture and Square classes first
  end

  def test_if_picture_takes_app_string
    assert_equal app.picture.string, "something"
  end

  def test_squares_returns_an_array_of_squares_containing_the_expected_colors
    app = Application.new("abc")
    actual_colors = app.squares.map { |square| square.color }
    expected_colors = %w(a b c).map { |char| Application.colors[char] }
    assert_equal expected_colors, actual_colors
  end
end

