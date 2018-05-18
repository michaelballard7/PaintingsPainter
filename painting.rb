class Painting
  attr_accessor :title
  attr_reader :width, :height, :gallery, :painter

# this establishes the single source of truth
 @@all_paintings = [ ]

  def initialize(title, painter, gallery, year)
    @title = title
    @painter = painter
    @gallery = gallery
    @year = year
    @@all_paintings << self
  end

  def self.all_paintings
    @@all_paintings
  end

end
