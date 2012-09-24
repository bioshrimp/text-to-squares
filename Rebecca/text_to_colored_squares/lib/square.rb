
class Square
  def initialize(character)
    @character = character
    # takes a letter as an argument of the initialize method
  end

  def color
    Application.colors[@character]
    # method `color` which returns the color according to the letter
  end
end
