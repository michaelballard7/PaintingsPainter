class Painter

  @@all_painters = []

  attr_accessor :name
  attr_reader :dob

  def initialize(name, dob)
    @name = name
    @dob = dob
    @my_paintings = []
  end

  def paintings
    # this line establishes the connetion between the Painting class
    Painting.all_paintings.select do |painting|
      painting.painter == self
    end
  end

  def make_paintings(title, width, height)
    # this line instantiates a Painting, and makes a connection between the Painting class
    Painting.new(title,width,height,self)
  end

  def galleries
    self.paintings.collect {|paintings| painting.gallery}
  end

  def self.all_painters
    @@all_painters
  end
end


# what are the questions to ask
#
