class Painter

  attr_accessor :name
  attr_reader :dob

  def initialize(name, dob)
    @name = name
    @dob = dob
    @my_paintings = []
  end

  def paintings
    Painting.all_shapes
  end

  def make_paintings(title, width, height)
    Painting.new(title,width,height,self)
  end

end


# what are the questions to ask
#
