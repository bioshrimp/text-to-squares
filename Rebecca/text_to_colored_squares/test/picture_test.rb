require "test_helper"

class PictureTest < Test::Unit::TestCase
  attr_reader :picture

  def setup
    @picture = Picture.new("something")
  end

  def test_creation
    assert picture.instance_of?(Picture)
    # assert that picture is an instance of Picture
  end

  def test_normalized_string_strips_special_chars
    assert picture.normalized_string == "something"
    # assert that picture.normalized_string returns a string with "!" stripped off
  end

  def test_normalized_string_downcases
    picture = Picture.new("SOMETHING")
    assert picture.normalized_string == "something"
    # assert that picture.normalized_string returns a string with "!" stripped off
  end

  def test_characters_returns_an_array_of_characters_from_the_normalized_string
    assert_equal picture.characters, %w(s o m e t h i n g)    
    # assert that picture.characters returns an array of all characters contained in "something"
  end

  def test_squares_returns_an_array_of_squares_from_the_characters
    # assert_equal picture.squares.first, "s"
    assert picture.squares.instance_of?(Array)
    # assert that picture.squares returns an an array of Square instances where the first one
    # has the letter "s"
    # hint: you will need to implement the Square class first
  end

  def test_size_returns_the_root_of_the_number_of_characters
    assert picture.size == 3, 'the method size should return the root of the numbers of characters'
  end


  def test_rows_returns_an_array_of_arrays_of_squares
    # ... so that we can render each row and for each row
    # render an li tag that has the color
  end

  def test_rows_returns_an_array_of_picture_size_rows
    assert_equal picture.rows.count, 3 
    # i.e. given that picture.size is 3 it should have 3 rows
  end

  def test_rows_returns_an_array_where_the_first_row_contains_picture_size_squares
    assert_equal picture.rows.first.length, 3 
    # i.e. given that picture.size is 3 the first row should have 3 squares
  end
end


