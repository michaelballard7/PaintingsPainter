class Gallery

  attr_reader :name

  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all_paintings.select do |painting|
      painting.gallery == self
    end
  end

  def painters
    self.paintings.map do |painting|
      painting.painter
  end

  end


end

# gallery has many artists through its painting
