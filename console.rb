require 'pry'
require_relative './painting.rb'
require_relative './painter.rb'
require_relative './gallery.rb'

raz = Painter.new("Raz", 1000)
matt = Painter.new("Matt", 1000)
tim = Painter.new("Tim",0)

princes_lounge = Gallery.new("princes lounge")
met = Gallery.new("The Met")

raz_painting = Painting.new("catt smoking", raz, met, 2000)
matt_painitng = Painting.new("3 blind mice", matt, princes_lounge, 2001)

binding.pry
