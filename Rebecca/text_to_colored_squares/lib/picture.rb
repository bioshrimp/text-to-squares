
class Picture
  attr_reader :string

  def initialize(string)
    @string = string
    # takes the string & a number of row and columns as arguments of the initalize method
  end

  def normalized_string
   @string.gsub(/[^a-zA-Z]/, '').downcase
   # method `normalized_string` returns a version of the string w/ everything 
   # but A-Za-z stripped off and downcased
  end

  def characters
    normalized_string.chars.to_a
    # method `characters` which returns all the characters from the `normalized_string``
  end

  def squares
    characters.map { |character| Square.new(character) }
    # method `squares` which returns an array of `Square` instances where each of the
    # squares has one of the characters
  end

  def size
    Math.sqrt(@string.size).to_i
   # ... has a method `size` which returns the number of rows and columns of the picture
   # as the square root of the total number of characters with any decimal digits cut off
  end

  def rows
     squares.each_slice(size).to_a
     # return an array of arrays that contain so and so many squares
  end
end
