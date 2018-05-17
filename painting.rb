class Painting

  attr_accessor :title
  attr_reader :width, :height

 @@all_paintings = [ ]

  def initialize(title, width, height, painter)
    @title = title
    @width = width
    @height = height
    @painter = painter
    @@all_paintings << self
  end

  def painter
    @painter
  end

  def painter_name
    self.painter.name
  end

  def self.all_paintings
    @@all_paintings
  end

end
