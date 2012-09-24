  require "erb"

class Application

  attr_reader :string

  def self.colors
    {"a" => "000000", "b" => "F8F8F8", "c" => "101010", "d" => "E8E8E8", "e" => "202020", "f" => "D8D8D8", "g" => "303030", "h" => "383838", "i" => "404040", "j" => "484848", "k" => "505050", "l" => "585858", "m" => "606060", "n" => "686868", "o" => "707070", "p" => "787878", "q" => "808080", "r" => "888888", "s" => "909090", "t" => "989898", "u" => "A0A0A0", "v" => "A8A8A8", "x" => "B0B0B0", "y" => "B8B8B8", "z" => "C0C0C0" }
  # knows all the available colors (common class knowledge => should be a class method)
  end

  def initialize(string)
    @string = string
  end

  def picture
    Picture.new(string)  
    # method `picture` which returns an instance of `Picture` created with that string
  end

  def squares
    picture.squares
    #-[Square.new("character")]
    # method squares which returns the squares from the picture
  end

  def rows
    picture.rows
  end

  def render
   template = File.read('lib/template.html.erb')
   erb = ERB.new(template)
   html = erb.result(binding)
  end
end


